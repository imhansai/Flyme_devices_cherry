.class Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;
.super Ljava/lang/Object;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCMHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 133
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 135
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 137
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 139
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 141
    :cond_3
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 143
    :cond_4
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 145
    :cond_5
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 147
    :cond_6
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 148
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 149
    :cond_7
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 151
    :cond_8
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 153
    :cond_9
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 155
    :cond_a
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 157
    :cond_b
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 159
    :cond_c
    invoke-static {}, Lorg/cyanogenmod/hardware/PersistentStorage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 160
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 161
    :cond_d
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 162
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 163
    :cond_e
    invoke-static {}, Lorg/cyanogenmod/hardware/UniqueDeviceId;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 164
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 165
    :cond_f
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorBalance;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 166
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 167
    :cond_10
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 168
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 169
    :cond_11
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenGestures;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 170
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 132
    :cond_12
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 224
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 225
    :cond_0
    return-object v5

    .line 227
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "strArray":[Ljava/lang/String;
    :try_start_0
    array-length v4, v3

    new-array v2, v4, [I

    .line 230
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 231
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_2
    return-object v2

    .line 234
    .end local v1    # "i":I
    .end local v2    # "intArray":[I
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v5
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 196
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    return v0

    .line 180
    :sswitch_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    return v0

    .line 182
    :sswitch_1
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 184
    :sswitch_2
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    return v0

    .line 186
    :sswitch_3
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isActive()Z

    move-result v0

    return v0

    .line 188
    :sswitch_4
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 190
    :sswitch_5
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    return v0

    .line 192
    :sswitch_6
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isEnabled()Z

    move-result v0

    return v0

    .line 194
    :sswitch_7
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    return v0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_6
        0x8000 -> :sswitch_7
    .end sparse-switch
.end method

.method public getColorBalance()I
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorBalance;->getValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorBalance;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorBalance;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getCurrentMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getDefaultMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getDefaultHSIC()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 252
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 253
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v8

    .line 256
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 257
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 258
    aget v2, v1, v5

    aput v2, v0, v5

    .line 259
    aget v2, v1, v6

    aput v2, v0, v6

    .line 261
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    .line 260
    aput v2, v0, v7

    .line 263
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v2

    .line 262
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 265
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v2

    .line 264
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 266
    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 9
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 279
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 280
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v8

    .line 283
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 284
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 285
    aget v2, v1, v5

    aput v2, v0, v5

    .line 286
    aget v2, v1, v6

    aput v2, v0, v6

    .line 288
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    .line 287
    aput v2, v0, v7

    .line 290
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v2

    .line 289
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 291
    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getAvailableModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 318
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 322
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getHSIC()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getPictureAdjustmentRanges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/Range;

    .line 389
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getHueRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 390
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 391
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 392
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 393
    invoke-static {}, Lorg/cyanogenmod/hardware/PictureAdjustment;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 388
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenGestures;->getAvailableGestures()[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lorg/cyanogenmod/hardware/UniqueDeviceId;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    .line 299
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 300
    .local v0, "vibrator":[I
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 301
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 302
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 303
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 304
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 305
    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p1}, Lorg/cyanogenmod/hardware/PersistentStorage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 218
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    return v0

    .line 204
    :sswitch_0
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 206
    :sswitch_1
    invoke-static {p2}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 208
    :sswitch_2
    invoke-static {p2}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 210
    :sswitch_3
    invoke-static {p2}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    return v0

    .line 212
    :sswitch_4
    invoke-static {p2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 214
    :sswitch_5
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 216
    :sswitch_6
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AutoContrast;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_6
    .end sparse-switch
.end method

.method public setColorBalance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 378
    invoke-static {p1}, Lorg/cyanogenmod/hardware/ColorBalance;->setValue(I)Z

    move-result v0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 1
    .param p1, "rgb"    # [I

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 295
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 1
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 354
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/DisplayModeControl;->setMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 1
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    .line 385
    invoke-static {p1}, Lorg/cyanogenmod/hardware/PictureAdjustment;->setHSIC(Lcyanogenmod/hardware/HSIC;)Z

    move-result v0

    return v0
.end method

.method public setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z
    .locals 1
    .param p1, "gesture"    # Lcyanogenmod/hardware/TouchscreenGesture;
    .param p2, "state"    # Z

    .prologue
    .line 401
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/TouchscreenGestures;->setGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 309
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 358
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/PersistentStorage;->set(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
