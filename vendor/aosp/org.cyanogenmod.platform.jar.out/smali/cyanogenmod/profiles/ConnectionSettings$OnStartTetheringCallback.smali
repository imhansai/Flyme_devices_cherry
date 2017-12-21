.class final Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "ConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/profiles/ConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcyanogenmod/profiles/ConnectionSettings$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method
