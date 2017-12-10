.class Lorg/cyanogenmod/platform/internal/common/UserContentObserver$2;
.super Ljava/lang/Object;
.source "UserContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cyanogenmod/platform/internal/common/UserContentObserver;-><init>(Landroid/os/Handler;)V
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
    .line 57
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/common/UserContentObserver$2;->this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/common/UserContentObserver$2;->this$0:Lorg/cyanogenmod/platform/internal/common/UserContentObserver;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/common/UserContentObserver;->update()V

    .line 59
    return-void
.end method
