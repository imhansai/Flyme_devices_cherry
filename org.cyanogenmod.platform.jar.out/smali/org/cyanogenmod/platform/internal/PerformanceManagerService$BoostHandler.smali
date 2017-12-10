.class final Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;
.super Landroid/os/Handler;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 541
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    .line 542
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 541
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 547
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 546
    :goto_0
    return-void

    .line 549
    :pswitch_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get8(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x110

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 550
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->log(ILjava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get8(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x111

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 554
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostHandler;->this$0:Lorg/cyanogenmod/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->-get3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    .line 555
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual {v1, v0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$BoostLog;->log(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
