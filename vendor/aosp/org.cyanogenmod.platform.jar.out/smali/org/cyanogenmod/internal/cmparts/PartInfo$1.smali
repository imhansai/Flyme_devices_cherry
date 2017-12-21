.class final Lorg/cyanogenmod/internal/cmparts/PartInfo$1;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/cmparts/PartInfo;
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
        "Lorg/cyanogenmod/internal/cmparts/PartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/cyanogenmod/internal/cmparts/PartInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 190
    new-instance v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-direct {v0, p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo$1;->newArray(I)[Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/cyanogenmod/internal/cmparts/PartInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 195
    new-array v0, p1, [Lorg/cyanogenmod/internal/cmparts/PartInfo;

    return-object v0
.end method
