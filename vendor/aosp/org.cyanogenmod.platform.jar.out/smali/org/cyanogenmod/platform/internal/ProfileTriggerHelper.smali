.class public Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileTriggerHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterRegistered:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "profileManagerService"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 73
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .line 75
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 77
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 81
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->updateEnabled()V

    .line 87
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "system_profiles_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 87
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 146
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v12}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getActiveProfileInternal()Lcyanogenmod/app/Profile;

    move-result-object v1

    .line 147
    .local v1, "activeProfile":Lcyanogenmod/app/Profile;
    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 149
    .local v2, "currentProfileUuid":Ljava/util/UUID;
    const/4 v4, 0x0

    .line 150
    .local v4, "newProfileSelected":Z
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v12}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/Profile;

    .line 151
    .local v5, "p":Lcyanogenmod/app/Profile;
    move-object/from16 v0, p2

    invoke-virtual {v5, p1, v0}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v7

    .line 152
    .local v7, "profileTriggerState":I
    move/from16 v0, p3

    if-ne v0, v7, :cond_0

    .line 156
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 157
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 158
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    .end local v5    # "p":Lcyanogenmod/app/Profile;
    .end local v7    # "profileTriggerState":I
    :cond_1
    if-nez v4, :cond_3

    .line 164
    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "trigger$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 165
    .local v8, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v8}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "triggerID":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 168
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v12, "cyanogenmod.platform.intent.action.INTENT_ACTION_PROFILE_TRIGGER_STATE_CHANGED"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "trigger_id"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v12, "trigger_type"

    invoke-virtual {v3, v12, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string/jumbo v12, "trigger_state"

    move/from16 v0, p3

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 174
    invoke-virtual {v8}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v11

    .line 175
    .local v11, "triggerState":I
    if-nez p3, :cond_4

    .line 176
    if-nez v11, :cond_4

    .line 179
    :goto_1
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lcyanogenmod/app/Profile;->doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 145
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .end local v9    # "trigger$iterator":Ljava/util/Iterator;
    .end local v10    # "triggerID":Ljava/lang/String;
    .end local v11    # "triggerState":I
    :cond_3
    return-void

    .line 177
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .restart local v9    # "trigger$iterator":Ljava/util/Iterator;
    .restart local v10    # "triggerID":Ljava/lang/String;
    .restart local v11    # "triggerState":I
    :cond_4
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_3

    .line 178
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    goto :goto_1
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 190
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 191
    return-object v3

    .line 193
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 194
    .local v0, "ssid":Landroid/net/wifi/WifiSsid;
    if-nez v0, :cond_1

    .line 195
    return-object v3

    .line 197
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    const-string/jumbo v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 112
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 113
    .local v4, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v8, v7, v9}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    .line 116
    const-string/jumbo v7, "<unknown ssid>"

    iput-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 107
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    const-string/jumbo v7, "wifiInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiInfo;

    .line 119
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 120
    .local v3, "ssid":Landroid/net/wifi/WifiSsid;
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 122
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v8, v7, v8}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .line 126
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "ssid":Landroid/net/wifi/WifiSsid;
    .end local v4    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    const-string/jumbo v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 127
    const-string/jumbo v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 126
    if-eqz v7, :cond_0

    .line 128
    :cond_3
    const-string/jumbo v7, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, "triggerState":I
    :goto_1
    const-string/jumbo v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7, v5}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .line 129
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "triggerState":I
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "triggerState":I
    goto :goto_1
.end method

.method public updateEnabled()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 94
    const-string/jumbo v4, "system_profiles_enabled"

    .line 93
    invoke-static {v3, v4, v1}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 95
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v3, :cond_3

    .line 99
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v1, "ProfileTriggerHelper"

    const-string/jumbo v3, "Disabling"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 92
    :cond_1
    :goto_1
    return-void

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v2

    .line 93
    goto :goto_0

    .line 96
    .restart local v0    # "enabled":Z
    :cond_3
    const-string/jumbo v2, "ProfileTriggerHelper"

    const-string/jumbo v3, "Enabling"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    goto :goto_1
.end method
