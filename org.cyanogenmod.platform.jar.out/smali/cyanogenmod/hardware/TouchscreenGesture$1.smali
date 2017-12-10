.class final Lcyanogenmod/hardware/TouchscreenGesture$1;
.super Ljava/lang/Object;
.source "TouchscreenGesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/TouchscreenGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcyanogenmod/hardware/TouchscreenGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcyanogenmod/hardware/TouchscreenGesture;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcyanogenmod/hardware/TouchscreenGesture;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcyanogenmod/hardware/TouchscreenGesture$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/hardware/TouchscreenGesture;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcyanogenmod/hardware/TouchscreenGesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcyanogenmod/hardware/TouchscreenGesture$1;->newArray(I)[Lcyanogenmod/hardware/TouchscreenGesture;

    move-result-object v0

    return-object v0
.end method
