.class public Lcyanogenmod/preference/ConstraintsHelper;
.super Ljava/lang/Object;
.source "ConstraintsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/preference/ConstraintsHelper$Graveyard;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ConstraintsHelper"


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private mAvailable:Z

.field private final mContext:Landroid/content/Context;

.field private final mPref:Landroid/support/v7/preference/Preference;

.field private mReplacesKey:Ljava/lang/String;

.field private mSummaryMinLines:I

.field private mVerifyIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "ConstraintsHelper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    .line 65
    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mVerifyIntent:Z

    .line 67
    iput v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    .line 74
    iput-object p3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    sget-object v2, Lcyanogenmod/platform/R$styleable;->cm_SelfRemovingPreference:[I

    .line 76
    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    .line 79
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcyanogenmod/preference/ConstraintsHelper;->checkConstraints()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcyanogenmod/preference/ConstraintsHelper;->setAvailable(Z)V

    .line 82
    const-string/jumbo v1, "ConstraintsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "construct key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " available="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private checkConstraints()Z
    .locals 13

    .prologue
    .line 133
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    if-nez v10, :cond_0

    .line 134
    const/4 v10, 0x1

    return v10

    .line 137
    :cond_0
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAttrs:Landroid/util/AttributeSet;

    .line 138
    sget-object v12, Lcyanogenmod/platform/R$styleable;->cm_SelfRemovingPreference:[I

    .line 137
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x4

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 144
    .local v5, "rOwner":Z
    if-eqz v5, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    return v10

    .line 149
    :cond_1
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "rPackage":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 151
    invoke-direct {p0, v6}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    .line 152
    .local v2, "negated":Z
    if-eqz v2, :cond_2

    .line 153
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    :cond_2
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Lcyanogenmod/preference/ConstraintsHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 156
    .local v1, "available":Z
    if-ne v1, v2, :cond_3

    .line 157
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    return v10

    .line 162
    .end local v1    # "available":Z
    .end local v2    # "negated":Z
    :cond_3
    const/4 v10, 0x5

    :try_start_2
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "rAction":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 164
    invoke-direct {p0, v3}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    .line 165
    .restart local v2    # "negated":Z
    if-eqz v2, :cond_4

    .line 166
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    :cond_4
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v3}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 169
    .restart local v1    # "available":Z
    if-ne v1, v2, :cond_5

    .line 170
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    return v10

    .line 175
    .end local v1    # "available":Z
    .end local v2    # "negated":Z
    :cond_5
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "rFeature":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 177
    invoke-direct {p0, v4}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    .line 178
    .restart local v2    # "negated":Z
    if-eqz v2, :cond_6

    .line 179
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_6
    const-string/jumbo v10, "cmhardware:"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 182
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v10

    .line 183
    const-string/jumbo v11, "cmhardware:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-virtual {v10, v11}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 185
    .restart local v1    # "available":Z
    :goto_0
    if-ne v1, v2, :cond_8

    .line 186
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    return v10

    .line 184
    .end local v1    # "available":Z
    :cond_7
    :try_start_4
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcyanogenmod/preference/ConstraintsHelper;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "available":Z
    goto :goto_0

    .line 191
    .end local v1    # "available":Z
    .end local v2    # "negated":Z
    :cond_8
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "rProperty":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 193
    invoke-direct {p0, v7}, Lcyanogenmod/preference/ConstraintsHelper;->isNegated(Ljava/lang/String;)Z

    move-result v2

    .line 194
    .restart local v2    # "negated":Z
    if-eqz v2, :cond_9

    .line 195
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    :cond_9
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    .line 199
    :goto_1
    if-ne v1, v2, :cond_b

    .line 200
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    return v10

    .line 198
    :cond_a
    const/4 v1, 0x0

    .local v1, "available":Z
    goto :goto_1

    .line 206
    .end local v1    # "available":Z
    .end local v2    # "negated":Z
    .end local v9    # "value":Ljava/lang/String;
    :cond_b
    const/4 v10, 0x2

    :try_start_5
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 207
    .local v8, "tv":Landroid/util/TypedValue;
    if-eqz v8, :cond_d

    .line 208
    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_c

    .line 209
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_d

    .line 210
    iget-object v10, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    if-nez v10, :cond_d

    .line 211
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    return v10

    .line 214
    :cond_c
    :try_start_6
    iget v10, v8, Landroid/util/TypedValue;->type:I

    const/16 v11, 0x12

    if-ne v10, v11, :cond_d

    .line 215
    iget v10, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_d

    .line 216
    iget v10, v8, Landroid/util/TypedValue;->data:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v10, :cond_d

    .line 217
    const/4 v10, 0x0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    return v10

    .line 223
    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    const/4 v10, 0x1

    return v10

    .line 222
    .end local v3    # "rAction":Ljava/lang/String;
    .end local v4    # "rFeature":Ljava/lang/String;
    .end local v5    # "rOwner":Z
    .end local v6    # "rPackage":Ljava/lang/String;
    .end local v7    # "rProperty":Ljava/lang/String;
    .end local v8    # "tv":Landroid/util/TypedValue;
    :catchall_0
    move-exception v10

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    throw v10
.end method

.method private checkIntent()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    .line 122
    :cond_0
    return-void
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "fallbackAttr"    # I

    .prologue
    .line 291
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 292
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 293
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 294
    return p1

    .line 296
    :cond_0
    return p2
.end method

.method private getParent(Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 101
    iget-object v0, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcyanogenmod/preference/ConstraintsHelper;->getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method private getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 5
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 106
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 107
    .local v1, "p":Landroid/support/v7/preference/Preference;
    if-ne v1, p2, :cond_0

    .line 108
    return-object p1

    .line 109
    :cond_0
    const-class v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "p":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, v1, p2}, Lcyanogenmod/preference/ConstraintsHelper;->getParent(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/Preference;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    .line 111
    .local v2, "parent":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v2, :cond_1

    .line 112
    return-object v2

    .line 105
    .end local v2    # "parent":Landroid/support/v7/preference/PreferenceGroup;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    return-object v4
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNegated(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const-string/jumbo v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "ignoreState"    # Z

    .prologue
    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 253
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    if-eqz p2, :cond_1

    .line 261
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 254
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    return v4

    .line 256
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 242
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 268
    sget-boolean v4, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ConstraintsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 273
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 272
    const/high16 v5, 0x100000

    .line 271
    invoke-virtual {v0, p1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v4, Lcyanogenmod/preference/ConstraintsHelper;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ConstraintsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolveInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 280
    const/4 v4, 0x1

    return v4

    .line 283
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return v7
.end method

.method public static resolveIntent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcyanogenmod/preference/ConstraintsHelper;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 300
    invoke-direct {p0}, Lcyanogenmod/preference/ConstraintsHelper;->checkIntent()V

    .line 302
    invoke-virtual {p0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mReplacesKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->summonReaper(Landroid/support/v7/preference/PreferenceManager;)V

    .line 308
    invoke-virtual {p0}, Lcyanogenmod/preference/ConstraintsHelper;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    return-void

    .line 312
    :cond_1
    iget v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    if-lez v1, :cond_2

    .line 313
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 315
    iget v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mSummaryMinLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 299
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public setAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mAvailable:Z

    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcyanogenmod/preference/ConstraintsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->get(Landroid/content/Context;)Lcyanogenmod/preference/ConstraintsHelper$Graveyard;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcyanogenmod/preference/ConstraintsHelper$Graveyard;->addTombstone(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setVerifyIntent(Z)V
    .locals 0
    .param p1, "verifyIntent"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcyanogenmod/preference/ConstraintsHelper;->mVerifyIntent:Z

    .line 96
    return-void
.end method
