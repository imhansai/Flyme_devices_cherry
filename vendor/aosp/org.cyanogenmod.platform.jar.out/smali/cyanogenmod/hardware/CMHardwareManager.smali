.class public final Lcyanogenmod/hardware/CMHardwareManager;
.super Ljava/lang/Object;
.source "CMHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final COLOR_CALIBRATION_DEFAULT_INDEX:I = 0x3

.field public static final COLOR_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final COLOR_CALIBRATION_MAX_INDEX:I = 0x5

.field public static final COLOR_CALIBRATION_MIN_INDEX:I = 0x4

.field public static final COLOR_CALIBRATION_RED_INDEX:I = 0x0

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0x1000

.field public static final FEATURE_COLOR_BALANCE:I = 0x20000

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final FEATURE_DISPLAY_GAMMA_CALIBRATION:I = 0x8

.field public static final FEATURE_DISPLAY_MODES:I = 0x2000

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final FEATURE_KEY_DISABLE:I = 0x20

.field public static final FEATURE_LONG_TERM_ORBITS:I = 0x40

.field public static final FEATURE_PERSISTENT_STORAGE:I = 0x4000

.field public static final FEATURE_PICTURE_ADJUSTMENT:I = 0x40000

.field public static final FEATURE_SERIAL_NUMBER:I = 0x80

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final FEATURE_TAP_TO_WAKE:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_THERMAL_MONITOR:I = 0x8000

.field public static final FEATURE_TOUCHSCREEN_GESTURES:I = 0x80000

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800

.field public static final FEATURE_UNIQUE_DEVICE_ID:I = 0x10000

.field public static final FEATURE_VIBRATOR:I = 0x400

.field public static final GAMMA_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final GAMMA_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final GAMMA_CALIBRATION_MAX_INDEX:I = 0x4

.field public static final GAMMA_CALIBRATION_MIN_INDEX:I = 0x3

.field public static final GAMMA_CALIBRATION_RED_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMHardwareManager"

.field public static final VIBRATOR_DEFAULT_INDEX:I = 0x1

.field public static final VIBRATOR_INTENSITY_INDEX:I = 0x0

.field public static final VIBRATOR_MAX_INDEX:I = 0x3

.field public static final VIBRATOR_MIN_INDEX:I = 0x2

.field public static final VIBRATOR_WARNING_INDEX:I = 0x4

.field private static sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

.field private static sService:Lcyanogenmod/hardware/ICMHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 182
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 185
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 186
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 187
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 188
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 189
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 190
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 201
    iput-object v0, p0, Lcyanogenmod/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    .line 205
    :goto_0
    invoke-static {}, Lcyanogenmod/hardware/CMHardwareManager;->getService()Lcyanogenmod/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    const-string/jumbo v2, "org.cyanogenmod.hardware"

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 203
    :cond_1
    iput-object p1, p0, Lcyanogenmod/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 209
    :cond_2
    const-string/jumbo v1, "CMHardwareManager"

    const-string/jumbo v2, "Unable to get CMHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 1005
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    if-nez v0, :cond_0

    .line 1006
    const-string/jumbo v0, "CMHardwareManager"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    return v0

    .line 1009
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getArrayValue([III)I
    .locals 1
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 332
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 333
    :cond_0
    return p3

    .line 336
    :cond_1
    aget v0, p1, p2

    return v0
.end method

.method private getDisplayColorCalibrationArray()[I
    .locals 2

    .prologue
    .line 450
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayColorCalibration()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 453
    :catch_0
    move-exception v0

    .line 455
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDisplayGammaCalibrationArray(I)[I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 658
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayGammaCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 661
    :catch_0
    move-exception v0

    .line 663
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcyanogenmod/hardware/CMHardwareManager;

    invoke-direct {v0, p0}, Lcyanogenmod/hardware/CMHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    .line 224
    :cond_0
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/hardware/ICMHardwareService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    return-object v1

    .line 232
    :cond_0
    const-string/jumbo v1, "cmhardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 234
    invoke-static {v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 235
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    return-object v1

    .line 237
    :cond_1
    return-object v2
.end method

.method private getVibratorIntensityArray()[I
    .locals 2

    .prologue
    .line 362
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getVibratorIntensity()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 365
    :catch_0
    move-exception v0

    .line 367
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public deletePersistentObject(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 627
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 630
    :catch_0
    move-exception v0

    .line 632
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public get(I)Z
    .locals 4
    .param p1, "feature"    # I

    .prologue
    .line 294
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->get(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getColorBalance()I
    .locals 2

    .prologue
    .line 906
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getColorBalance()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 909
    :catch_0
    move-exception v0

    .line 911
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getColorBalanceRange()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, "min":I
    const/4 v1, 0x0

    .line 892
    .local v1, "max":I
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 893
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v3}, Lcyanogenmod/hardware/ICMHardwareService;->getColorBalanceMin()I

    move-result v2

    .line 894
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v3}, Lcyanogenmod/hardware/ICMHardwareService;->getColorBalanceMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 898
    :cond_0
    :goto_0
    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v3

    .line 896
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 851
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 854
    :catch_0
    move-exception v0

    .line 856
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 864
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 869
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    .prologue
    .line 953
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 956
    :catch_0
    move-exception v0

    .line 958
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayColorCalibration()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 462
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    .line 463
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 464
    :cond_0
    return-object v3

    .line 466
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayColorCalibrationDefault()I
    .locals 3

    .prologue
    .line 473
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMax()I
    .locals 3

    .prologue
    .line 487
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMin()I
    .locals 3

    .prologue
    .line 480
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 4
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 691
    invoke-direct {p0, p1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    .line 692
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 693
    :cond_0
    return-object v3

    .line 695
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayGammaCalibrationMax()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 715
    invoke-direct {p0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibrationMin()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 705
    invoke-direct {p0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 838
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 841
    :catch_0
    move-exception v0

    .line 843
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoDestination()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 762
    :catch_0
    move-exception v0

    .line 764
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 4

    .prologue
    .line 772
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoDownloadInterval()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 775
    :catch_0
    move-exception v0

    .line 777
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 746
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoSource()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 749
    :catch_0
    move-exception v0

    .line 751
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNumGammaControls()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 674
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getNumGammaControls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 677
    :catch_0
    move-exception v0

    .line 679
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 2

    .prologue
    .line 938
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 941
    :catch_0
    move-exception v0

    .line 943
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPictureAdjustmentRanges()Ljava/util/List;
    .locals 6
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
    .line 984
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    sget-object v2, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v2}, Lcyanogenmod/hardware/ICMHardwareService;->getPictureAdjustmentRanges()[F

    move-result-object v1

    .line 986
    .local v1, "ranges":[F
    array-length v2, v1

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 987
    const/4 v2, 0x5

    new-array v3, v2, [Landroid/util/Range;

    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 988
    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 989
    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x4

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 990
    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x6

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x7

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 991
    array-length v2, v1

    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    .line 992
    new-instance v2, Landroid/util/Range;

    const/16 v4, 0x8

    aget v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x9

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 991
    :goto_0
    const/4 v4, 0x4

    aput-object v2, v3, v4

    .line 987
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 993
    :cond_0
    new-instance v2, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    .end local v1    # "ranges":[F
    :catch_0
    move-exception v0

    .line 998
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 785
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 790
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 250
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getThermalState()I
    .locals 2

    .prologue
    .line 1017
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getThermalState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 2

    .prologue
    .line 1058
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1061
    :catch_0
    move-exception v0

    .line 1063
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 798
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getUniqueDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 801
    :catch_0
    move-exception v0

    .line 803
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVibratorDefaultIntensity()I
    .locals 3

    .prologue
    .line 381
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .locals 3

    .prologue
    .line 395
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .locals 3

    .prologue
    .line 388
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .locals 3

    .prologue
    .line 402
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 2

    .prologue
    .line 825
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->isSunlightEnhancementSelfManaged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 830
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 261
    invoke-virtual {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string/jumbo v2, "FEATURE_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    return v4

    .line 274
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 275
    .local v1, "f":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 278
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v2, "CMHardwareManager"

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    return v4
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 612
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 615
    :catch_0
    move-exception v0

    .line 617
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPersistentInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 593
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    sget-object v2, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 595
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 596
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 599
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 601
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public readPersistentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 572
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v3, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 574
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 575
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 579
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "CMHardwareManager"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    return-object v5

    .line 578
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerThermalListener(Lcyanogenmod/hardware/ThermalListenerCallback;)Z
    .locals 2
    .param p1, "thermalCallback"    # Lcyanogenmod/hardware/ThermalListenerCallback;

    .prologue
    .line 1031
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 2

    .prologue
    .line 812
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->requireAdaptiveBacklightForSunlightEnhancement()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 815
    :catch_0
    move-exception v0

    .line 817
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public set(IZ)Z
    .locals 4
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 318
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->set(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 328
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setColorBalance(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 923
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setColorBalance(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 926
    :catch_0
    move-exception v0

    .line 928
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 501
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayColorCalibration([I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 504
    :catch_0
    move-exception v0

    .line 506
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 733
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayGammaCalibration(I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 736
    :catch_0
    move-exception v0

    .line 738
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 2
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 877
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 880
    :catch_0
    move-exception v0

    .line 882
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 2
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    .line 969
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 972
    :catch_0
    move-exception v0

    .line 974
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z
    .locals 2
    .param p1, "gesture"    # Lcyanogenmod/hardware/TouchscreenGesture;
    .param p2, "state"    # Z

    .prologue
    .line 1072
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setVibratorIntensity(I)Z
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 415
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setVibratorIntensity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public unRegisterThermalListener(Lcyanogenmod/hardware/ThermalListenerCallback;)Z
    .locals 2
    .param p1, "thermalCallback"    # Lcyanogenmod/hardware/ThermalListenerCallback;

    .prologue
    .line 1045
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1048
    :catch_0
    move-exception v0

    .line 1050
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 556
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 559
    :catch_0
    move-exception v0

    .line 561
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentInt(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 538
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 540
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 539
    invoke-interface {v1, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 542
    :catch_0
    move-exception v0

    .line 544
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 520
    if-nez p2, :cond_0

    .line 519
    :goto_0
    invoke-interface {v3, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    .line 520
    :cond_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "CMHardwareManager"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 522
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
