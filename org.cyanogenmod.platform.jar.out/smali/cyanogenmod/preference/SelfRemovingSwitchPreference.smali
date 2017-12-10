.class public Lcyanogenmod/preference/SelfRemovingSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SelfRemovingSwitchPreference.java"


# instance fields
.field private final mConstraints:Lcyanogenmod/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcyanogenmod/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lcyanogenmod/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lcyanogenmod/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 47
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingSwitchPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->setAvailable(Z)V

    .line 52
    return-void
.end method
