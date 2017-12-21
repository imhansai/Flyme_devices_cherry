.class Lorg/cyanogenmod/platform/internal/common/UserContentObserver$1;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/common/UserContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/common/UserContentObserver;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/common/UserContentObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I

    .prologue
    .line 44
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/common/UserContentObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/common/UserContentObserver;->-get0(Lorg/cyanogenmod/platform/internal/common/UserContentObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/common/UserContentObserver$1;->this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/common/UserContentObserver;->-get1(Lorg/cyanogenmod/platform/internal/common/UserContentObserver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 37
    return-void
.end method
