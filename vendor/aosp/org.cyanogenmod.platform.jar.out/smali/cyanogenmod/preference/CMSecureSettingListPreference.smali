.class public Lcyanogenmod/preference/CMSecureSettingListPreference;
.super Lcyanogenmod/preference/SelfRemovingListPreference;
.source "CMSecureSettingListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcyanogenmod/preference/SelfRemovingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcyanogenmod/preference/SelfRemovingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getIntValue(I)I
    .locals 1
    .param p1, "defValue"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .end local p1    # "defValue":I
    :goto_0
    return p1

    .restart local p1    # "defValue":I
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    return-object p1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected isPersisted()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcyanogenmod/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39
    return v2

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcyanogenmod/preference/CMSecureSettingListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    return v2

    .line 44
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
