.class public Lcyanogenmod/preference/RemotePreferenceUpdater;
.super Landroid/content/BroadcastReceiver;
.source "RemotePreferenceUpdater.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcyanogenmod/preference/RemotePreferenceUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/RemotePreferenceUpdater;->TAG:Ljava/lang/String;

    .line 50
    const-class v0, Lcyanogenmod/preference/RemotePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/RemotePreferenceUpdater;->DEBUG:Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getTargetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.REFRESH_PREFERENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, ":cm:pref_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method public static notifyChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-boolean v0, Lcyanogenmod/preference/RemotePreferenceUpdater;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcyanogenmod/preference/RemotePreferenceUpdater;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyChanged: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    const-string/jumbo v2, " target="

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-static {p0, p1}, Lcyanogenmod/preference/RemotePreferenceUpdater;->getTargetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-static {p0, p1}, Lcyanogenmod/preference/RemotePreferenceUpdater;->getTargetIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 127
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v2, "cyanogenmod.permission.MANAGE_REMOTE_PREFERENCES"

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected fillResultExtras(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const-string/jumbo v1, ":cm:pref_key"

    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcyanogenmod/preference/RemotePreferenceUpdater;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "summary":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_0
    const-string/jumbo v1, ":cm:pref_summary"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method protected getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreferenceUpdater;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-string/jumbo v1, "cyanogenmod.intent.action.UPDATE_PREFERENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 98
    const-string/jumbo v1, ":cm:pref_key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcyanogenmod/preference/RemotePreferenceUpdater;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/preference/RemotePreferenceUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    const-string/jumbo v3, " intent="

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    const-string/jumbo v3, " extras="

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0, v4}, Lcyanogenmod/preference/RemotePreferenceUpdater;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcyanogenmod/preference/RemotePreferenceUpdater;->fillResultExtras(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcyanogenmod/preference/RemotePreferenceUpdater;->setResultCode(I)V

    .line 107
    sget-boolean v1, Lcyanogenmod/preference/RemotePreferenceUpdater;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcyanogenmod/preference/RemotePreferenceUpdater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    invoke-virtual {p0, v4}, Lcyanogenmod/preference/RemotePreferenceUpdater;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreferenceUpdater;->abortBroadcast()V

    .line 95
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method
