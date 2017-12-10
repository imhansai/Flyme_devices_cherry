.class Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "TwilightTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/TwilightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    .prologue
    .line 405
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;->this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 408
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;->this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->-get3(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;->requestTwilightUpdate()V

    .line 407
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$1;->this$0:Lorg/cyanogenmod/platform/internal/display/TwilightTracker;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker;->-get3(Lorg/cyanogenmod/platform/internal/display/TwilightTracker;)Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/display/TwilightTracker$LocationHandler;->requestLocationUpdate()V

    .line 412
    return-void
.end method
