.class public Lcyanogenmod/power/PerformanceProfile;
.super Ljava/lang/Object;
.source "PerformanceProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/power/PerformanceProfile$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcyanogenmod/power/PerformanceProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/power/PerformanceProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBoostEnabled:Z

.field private final mDescription:Ljava/lang/String;

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcyanogenmod/power/PerformanceProfile$1;

    invoke-direct {v0}, Lcyanogenmod/power/PerformanceProfile$1;-><init>()V

    sput-object v0, Lcyanogenmod/power/PerformanceProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(IFLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "weight"    # F
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "boostEnabled"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    .line 45
    iput p2, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    .line 46
    iput-object p3, p0, Lcyanogenmod/power/PerformanceProfile;->mName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcyanogenmod/power/PerformanceProfile;->mDescription:Ljava/lang/String;

    .line 48
    iput-boolean p5, p0, Lcyanogenmod/power/PerformanceProfile;->mBoostEnabled:Z

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 53
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 55
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/power/PerformanceProfile;->mName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcyanogenmod/power/PerformanceProfile;->mDescription:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/power/PerformanceProfile;->mBoostEnabled:Z

    .line 61
    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 51
    return-void

    .line 59
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/power/PerformanceProfile;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/power/PerformanceProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcyanogenmod/power/PerformanceProfile;)I
    .locals 2
    .param p1, "other"    # Lcyanogenmod/power/PerformanceProfile;

    .prologue
    .line 150
    iget v0, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    iget v1, p1, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p1, Lcyanogenmod/power/PerformanceProfile;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcyanogenmod/power/PerformanceProfile;->compareTo(Lcyanogenmod/power/PerformanceProfile;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    return v3

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/power/PerformanceProfile;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    return v3

    :cond_1
    move-object v0, p1

    .line 162
    check-cast v0, Lcyanogenmod/power/PerformanceProfile;

    .line 163
    .local v0, "o":Lcyanogenmod/power/PerformanceProfile;
    iget v1, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcyanogenmod/power/PerformanceProfile;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcyanogenmod/power/PerformanceProfile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBoostEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcyanogenmod/power/PerformanceProfile;->mBoostEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const-string/jumbo v0, "PerformanceProfile[id=%d, weight=%f, name=%s desc=%s boostEnabled=%b]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 174
    iget v2, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcyanogenmod/power/PerformanceProfile;->mName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcyanogenmod/power/PerformanceProfile;->mDescription:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcyanogenmod/power/PerformanceProfile;->mBoostEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 173
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 127
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/power/PerformanceProfile;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v1, p0, Lcyanogenmod/power/PerformanceProfile;->mWeight:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 129
    iget-object v1, p0, Lcyanogenmod/power/PerformanceProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcyanogenmod/power/PerformanceProfile;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Lcyanogenmod/power/PerformanceProfile;->mBoostEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 124
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
