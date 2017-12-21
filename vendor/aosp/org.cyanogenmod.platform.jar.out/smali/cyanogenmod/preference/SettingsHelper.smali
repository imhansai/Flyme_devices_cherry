.class public Lcyanogenmod/preference/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/SettingsHelper$Observatory;,
        Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    }
.end annotation


# static fields
.field private static final CMSETTINGS_GLOBAL:Ljava/lang/String;

.field private static final CMSETTINGS_SECURE:Ljava/lang/String;

.field private static final CMSETTINGS_SYSTEM:Ljava/lang/String;

.field private static final SETTINGS_GLOBAL:Ljava/lang/String;

.field private static final SETTINGS_SECURE:Ljava/lang/String;

.field private static final SETTINGS_SYSTEM:Ljava/lang/String;

.field private static sInstance:Lcyanogenmod/preference/SettingsHelper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    .line 37
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    .line 40
    sget-object v0, Lcyanogenmod/providers/CMSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    .line 41
    sget-object v0, Lcyanogenmod/providers/CMSettings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    .line 42
    sget-object v0, Lcyanogenmod/providers/CMSettings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcyanogenmod/preference/SettingsHelper$Observatory;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1}, Lcyanogenmod/preference/SettingsHelper$Observatory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    .line 49
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcyanogenmod/preference/SettingsHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcyanogenmod/preference/SettingsHelper;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcyanogenmod/preference/SettingsHelper;

    invoke-direct {v0, p0}, Lcyanogenmod/preference/SettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;

    .line 58
    :cond_0
    sget-object v0, Lcyanogenmod/preference/SettingsHelper;->sInstance:Lcyanogenmod/preference/SettingsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBoolean(Landroid/net/Uri;Z)Z
    .locals 4
    .param p1, "settingsUri"    # Landroid/net/Uri;
    .param p2, "def"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 102
    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcyanogenmod/preference/SettingsHelper;->getInt(Landroid/net/Uri;I)I

    move-result v0

    .line 103
    .local v0, "value":I
    if-ne v0, v2, :cond_1

    :goto_1
    return v2

    .end local v0    # "value":I
    :cond_0
    move v1, v3

    .line 102
    goto :goto_0

    .restart local v0    # "value":I
    :cond_1
    move v2, v3

    .line 103
    goto :goto_1
.end method

.method public getInt(Landroid/net/Uri;I)I
    .locals 3
    .param p1, "settingsUri"    # Landroid/net/Uri;
    .param p2, "def"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 87
    :cond_0
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 89
    :cond_1
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 91
    :cond_2
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 93
    :cond_3
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 95
    :cond_4
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 98
    :cond_5
    return p2
.end method

.method public getString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "settingsUri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :cond_0
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    :cond_1
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 71
    :cond_2
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 73
    :cond_3
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcyanogenmod/providers/CMSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 75
    :cond_4
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 78
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public putBoolean(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "settingsUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 145
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcyanogenmod/preference/SettingsHelper;->putInt(Landroid/net/Uri;I)V

    .line 144
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putInt(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "settingsUri"    # Landroid/net/Uri;
    .param p2, "value"    # I

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 133
    :cond_2
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 135
    :cond_3
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 137
    :cond_4
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 139
    :cond_5
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public putString(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "settingsUri"    # Landroid/net/Uri;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "uri":Ljava/lang/String;
    iget-object v2, p0, Lcyanogenmod/preference/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 114
    :cond_2
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->SETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 116
    :cond_3
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SECURE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 118
    :cond_4
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_SYSTEM:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 120
    :cond_5
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    sget-object v2, Lcyanogenmod/preference/SettingsHelper;->CMSETTINGS_GLOBAL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcyanogenmod/providers/CMSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public varargs startWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;
    .param p2, "settingsUris"    # [Landroid/net/Uri;

    .prologue
    .line 149
    iget-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    invoke-virtual {v0, p1, p2}, Lcyanogenmod/preference/SettingsHelper$Observatory;->register(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;[Landroid/net/Uri;)V

    .line 148
    return-void
.end method

.method public stopWatching(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcyanogenmod/preference/SettingsHelper;->mObservatory:Lcyanogenmod/preference/SettingsHelper$Observatory;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/SettingsHelper$Observatory;->unregister(Lcyanogenmod/preference/SettingsHelper$OnSettingsChangeListener;)V

    .line 152
    return-void
.end method
