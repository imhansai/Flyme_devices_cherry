.class public Lorg/cyanogenmod/internal/cmparts/PartInfo;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/cmparts/PartInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/cyanogenmod/internal/cmparts/PartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailable:Z

.field private mFragmentClass:Ljava/lang/String;

.field private mIconRes:I

.field private final mName:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mXmlRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->TAG:Ljava/lang/String;

    .line 187
    new-instance v0, Lorg/cyanogenmod/internal/cmparts/PartInfo$1;

    invoke-direct {v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo$1;-><init>()V

    sput-object v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    .line 43
    iput v3, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    .line 56
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 57
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 59
    .local v1, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    .line 55
    return-void

    :cond_0
    move v2, v3

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    .line 46
    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    return v1

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 168
    return v1

    :cond_1
    move-object v0, p1

    .line 170
    check-cast v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;

    .line 171
    .local v0, "o":Lorg/cyanogenmod/internal/cmparts/PartInfo;
    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    iget-object v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    iget-object v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 171
    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    iget-object v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 171
    if-eqz v2, :cond_2

    .line 173
    iget v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 171
    if-eqz v2, :cond_2

    .line 173
    iget-boolean v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 171
    if-eqz v2, :cond_2

    .line 174
    iget v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 171
    :cond_2
    return v1
.end method

.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "org.cyanogenmod.cmparts.parts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    return v0
.end method

.method public getIntentForActivity()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lorg/cyanogenmod/internal/cmparts/PartsList;->CMPARTS_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlRes()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    return v0
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    .line 108
    return-void
.end method

.method public setFragmentClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragmentClass"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setIconRes(I)V
    .locals 0
    .param p1, "iconRes"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    .line 100
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setXmlRes(I)V
    .locals 0
    .param p1, "xmlRes"    # I

    .prologue
    .line 117
    iput p1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    const-string/jumbo v0, "PartInfo=[ name=%s title=%s summary=%s fragment=%s xmlRes=%x ]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 138
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lorg/cyanogenmod/internal/cmparts/PartInfo;)Z
    .locals 2
    .param p1, "other"    # Lorg/cyanogenmod/internal/cmparts/PartInfo;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    return v1

    .line 124
    :cond_0
    invoke-virtual {p1, p0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    return v1

    .line 127
    :cond_1
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setTitle(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setSummary(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getFragmentClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setFragmentClass(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getIconRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setIconRes(I)V

    .line 131
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setAvailable(Z)V

    .line 132
    invoke-virtual {p1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getXmlRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->setXmlRes(I)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 151
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mIconRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mAvailable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v1, p0, Lorg/cyanogenmod/internal/cmparts/PartInfo;->mXmlRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 148
    return-void

    .line 156
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
