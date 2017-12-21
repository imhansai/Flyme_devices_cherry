.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Lcyanogenmod/power/PerformanceManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method private constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    .line 467
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    return-void
.end method


# virtual methods
.method public activityResumed(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "activityName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 479
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get5(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 485
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-set1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 475
    return-void

    .line 484
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V

    .line 470
    return-void
.end method
