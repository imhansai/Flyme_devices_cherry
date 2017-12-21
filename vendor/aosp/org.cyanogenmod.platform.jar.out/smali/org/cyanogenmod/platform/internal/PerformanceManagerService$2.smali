.class Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 562
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get5(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get6(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 568
    return-void

    .line 573
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)Z

    .line 574
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 565
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
