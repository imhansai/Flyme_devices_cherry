.class public Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;
.super Lcyanogenmod/preference/SelfRemovingSwitchPreference;
.source "CMGlobalSettingSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcyanogenmod/preference/SelfRemovingSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcyanogenmod/preference/SelfRemovingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcyanogenmod/preference/SelfRemovingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getPersistedBoolean(Z)Z
    .locals 5
    .param p1, "defaultReturnValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    return p1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    .line 56
    :goto_0
    invoke-static {v3, v4, v0}, Lcyanogenmod/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 57
    goto :goto_0

    :cond_2
    move v1, v2

    .line 56
    goto :goto_1
.end method

.method protected isPersisted()Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getPersistedBoolean(Z)Z

    move-result v0

    if-ne p1, v0, :cond_1

    .line 43
    return v2

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMGlobalSettingSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Lcyanogenmod/providers/CMSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    return v2

    .line 48
    :cond_3
    return v1
.end method
