.class public Lcyanogenmod/preference/SelfRemovingPreference;
.super Landroid/support/v7/preference/Preference;
.source "SelfRemovingPreference.java"


# instance fields
.field private final mConstraints:Lcyanogenmod/preference/ConstraintsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcyanogenmod/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    .line 43
    invoke-static {p1, v0, v1}, Lcyanogenmod/preference/ConstraintsHelper;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcyanogenmod/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcyanogenmod/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance v0, Lcyanogenmod/preference/ConstraintsHelper;

    invoke-direct {v0, p1, p2, p0}, Lcyanogenmod/preference/ConstraintsHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcyanogenmod/preference/SelfRemovingPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    .line 33
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 54
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 52
    return-void
.end method

.method public setAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcyanogenmod/preference/SelfRemovingPreference;->mConstraints:Lcyanogenmod/preference/ConstraintsHelper;

    invoke-virtual {v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->setAvailable(Z)V

    .line 57
    return-void
.end method
