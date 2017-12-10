.class public Lcyanogenmod/preference/RemotePreference;
.super Lcyanogenmod/preference/SelfRemovingPreference;
.source "RemotePreference.java"

# interfaces
.implements Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;


# static fields
.field public static final ACTION_REFRESH_PREFERENCE:Ljava/lang/String; = "cyanogenmod.intent.action.REFRESH_PREFERENCE"

.field public static final ACTION_UPDATE_PREFERENCE:Ljava/lang/String; = "cyanogenmod.intent.action.UPDATE_PREFERENCE"

.field private static final DEBUG:Z

.field public static final EXTRA_ENABLED:Ljava/lang/String; = ":cm:pref_enabled"

.field public static final EXTRA_KEY:Ljava/lang/String; = ":cm:pref_key"

.field public static final EXTRA_SUMMARY:Ljava/lang/String; = ":cm:pref_summary"

.field public static final META_REMOTE_KEY:Ljava/lang/String; = "org.cyanogenmod.settings.summary.key"

.field public static final META_REMOTE_RECEIVER:Ljava/lang/String; = "org.cyanogenmod.settings.summary.receiver"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-class v0, Lcyanogenmod/preference/RemotePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    .line 66
    sget-object v0, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    .line 97
    invoke-static {p1, v0, v1}, Lcyanogenmod/preference/ConstraintsHelper;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcyanogenmod/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcyanogenmod/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcyanogenmod/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    iput-object p1, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method


# virtual methods
.method public getReceiverIntent()Landroid/content/Intent;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 137
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "i":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 139
    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "No target intent specified in preference!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v14

    .line 143
    :cond_0
    iget-object v11, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 146
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 145
    const v12, 0x100080

    .line 144
    invoke-virtual {v3, v0, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 149
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 150
    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No activity found for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "resolved$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 154
    .local v7, "resolved":Landroid/content/pm/ResolveInfo;
    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 155
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ResolveInfo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 158
    .local v2, "meta":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    const-string/jumbo v11, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 162
    const-string/jumbo v11, "org.cyanogenmod.settings.summary.receiver"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "receiverClass":Ljava/lang/String;
    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 164
    .local v5, "receiverPackage":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcyanogenmod/preference/RemotePreference;->getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "remoteKey":Ljava/lang/String;
    sget-boolean v11, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getReceiverIntent class="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 167
    const-string/jumbo v13, " package="

    .line 166
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 167
    const-string/jumbo v13, " key="

    .line 166
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    if-eqz v6, :cond_2

    .line 173
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "cyanogenmod.intent.action.UPDATE_PREFERENCE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v10, "ri":Landroid/content/Intent;
    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v11, ":cm:pref_key"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    return-object v10

    .line 178
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "meta":Landroid/os/Bundle;
    .end local v4    # "receiverClass":Ljava/lang/String;
    .end local v5    # "receiverPackage":Ljava/lang/String;
    .end local v6    # "remoteKey":Ljava/lang/String;
    .end local v7    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ri":Landroid/content/Intent;
    :cond_4
    return-object v14
.end method

.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "metaData"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 131
    const-string/jumbo v2, "org.cyanogenmod.settings.summary.key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "remoteKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0    # "remoteKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "remoteKey":Ljava/lang/String;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onAttached()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcyanogenmod/preference/SelfRemovingPreference;->onAttached()V

    .line 119
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->attach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcyanogenmod/preference/SelfRemovingPreference;->onDetached()V

    .line 127
    iget-object v0, p0, Lcyanogenmod/preference/RemotePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/RemotePreferenceManager;->get(Landroid/content/Context;)Lcyanogenmod/preference/RemotePreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcyanogenmod/preference/RemotePreferenceManager;->detach(Ljava/lang/String;Lcyanogenmod/preference/RemotePreferenceManager$OnRemoteUpdateListener;)V

    .line 125
    return-void
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    sget-boolean v1, Lcyanogenmod/preference/RemotePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcyanogenmod/preference/RemotePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    const-string/jumbo v1, ":cm:pref_enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string/jumbo v1, ":cm:pref_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    .local v0, "available":Z
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lcyanogenmod/preference/RemotePreference;->setAvailable(Z)V

    .line 111
    .end local v0    # "available":Z
    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/preference/RemotePreference;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string/jumbo v1, ":cm:pref_summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcyanogenmod/preference/RemotePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    return-void
.end method
