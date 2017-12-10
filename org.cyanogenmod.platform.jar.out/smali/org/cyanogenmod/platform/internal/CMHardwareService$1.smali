.class Lorg/cyanogenmod/platform/internal/CMHardwareService$1;
.super Lcyanogenmod/hardware/ICMHardwareService$Stub;
.source "CMHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    .line 481
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 484
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 496
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 497
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->get(I)Z

    move-result v0

    return v0
.end method

.method public getColorBalance()I
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 817
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 816
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalance()I

    move-result v0

    return v0

    .line 821
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 807
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMax()I

    move-result v0

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 796
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMin()I

    move-result v0

    return v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 699
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 698
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-object v2

    .line 704
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 710
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 709
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-object v2

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 847
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 846
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 851
    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 519
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 518
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v2

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 556
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-object v2

    .line 561
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 676
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v4

    .line 677
    const-string/jumbo v5, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 676
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/16 v4, 0x2000

    invoke-direct {p0, v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 679
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Display modes are not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v6

    .line 682
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v4

    invoke-interface {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    .line 683
    .local v1, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-nez v1, :cond_1

    .line 684
    return-object v6

    .line 686
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v3, "remapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/hardware/DisplayMode;>;"
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 688
    .local v0, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v6, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .line 689
    .local v2, "r":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v2, :cond_2

    .line 690
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 693
    .end local v0    # "mode":Lcyanogenmod/hardware/DisplayMode;
    .end local v2    # "r":Lcyanogenmod/hardware/DisplayMode;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcyanogenmod/hardware/DisplayMode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/hardware/DisplayMode;

    return-object v4
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 611
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 610
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v2

    .line 616
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDownloadInterval()J
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 622
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 621
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-wide/16 v0, 0x0

    return-wide v0

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 600
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 599
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-object v2

    .line 605
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 545
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v0, 0x0

    return v0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getNumGammaControls()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 837
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 836
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 841
    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getPictureAdjustmentRanges()[F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 866
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    .line 867
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 866
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    .line 870
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    const/16 v1, 0xa

    new-array v2, v1, [F

    .line 871
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v5

    .line 872
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v7

    .line 873
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x5

    aput v1, v2, v3

    .line 874
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x6

    aput v1, v2, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 875
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x8

    aput v1, v2, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x9

    aput v1, v2, v3

    .line 870
    return-object v2

    .line 877
    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [F

    return-object v1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 633
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Serial number is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-object v2

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 490
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 489
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getThermalState()I
    .locals 3

    .prologue
    .line 766
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 767
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 766
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I

    move-result v0

    return v0

    .line 771
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 883
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 882
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Touchscreen gestures are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-object v2

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getTouchscreenGestures()[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unique device ID is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-object v2

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 578
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v2

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 3

    .prologue
    .line 665
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 666
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v0, 0x0

    return v0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 751
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 752
    const-string/jumbo v1, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    .line 751
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 754
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-object v3

    .line 753
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 757
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-object v3

    .line 761
    :cond_2
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    .line 776
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 777
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 776
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 655
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 654
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    return v0

    .line 660
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 508
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->set(IZ)Z

    move-result v0

    return v0
.end method

.method public setColorBalance(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 827
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 826
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setColorBalance(I)Z

    move-result v0

    return v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 530
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 529
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v3

    .line 535
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 536
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid color calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return v3

    .line 539
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 566
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 567
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 566
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 3
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 720
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 721
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 720
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x0

    return v0

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    const/4 v2, 0x0

    .line 856
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 857
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 856
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 859
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v0

    return v0

    .line 861
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z
    .locals 3
    .param p1, "gesture"    # Lcyanogenmod/hardware/TouchscreenGesture;
    .param p2, "state"    # Z

    .prologue
    .line 893
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 894
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 893
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Touchscreen gestures are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v0, 0x0

    return v0

    .line 899
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setTouchscreenGestureEnabled(Lcyanogenmod/hardware/TouchscreenGesture;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 589
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 588
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    return v0
.end method

.method public unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    .line 786
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 786
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 731
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    .line 732
    const-string/jumbo v2, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    .line 731
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 734
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v4

    .line 733
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    .line 738
    if-eqz p2, :cond_4

    array-length v1, p2

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_4

    .line 739
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v4

    .line 742
    :cond_4
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 743
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return v4

    .line 746
    :cond_5
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
