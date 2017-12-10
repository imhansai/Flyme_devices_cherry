.class public Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;
.super Lcyanogenmod/preference/RemotePreference;
.source "CMPartsPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMPartsPreference"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcyanogenmod/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-object p1, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lorg/cyanogenmod/internal/cmparts/PartsList;->get(Landroid/content/Context;)Lorg/cyanogenmod/internal/cmparts/PartsList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cyanogenmod/internal/cmparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/cyanogenmod/internal/cmparts/PartInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    .line 41
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Part not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    invoke-direct {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->updatePreference()V

    .line 46
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getIntentForActivity()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->setIntent(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method private updatePreference()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v1}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->setAvailable(Z)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "metaData"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string/jumbo v1, ":cm:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, ":cm:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/cyanogenmod/internal/cmparts/PartInfo;

    .line 61
    .local v0, "update":Lorg/cyanogenmod/internal/cmparts/PartInfo;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->mPart:Lorg/cyanogenmod/internal/cmparts/PartInfo;

    invoke-virtual {v1, v0}, Lorg/cyanogenmod/internal/cmparts/PartInfo;->updateFrom(Lorg/cyanogenmod/internal/cmparts/PartInfo;)Z

    .line 63
    invoke-direct {p0}, Lorg/cyanogenmod/internal/cmparts/CMPartsPreference;->updatePreference()V

    .line 58
    .end local v0    # "update":Lorg/cyanogenmod/internal/cmparts/PartInfo;
    :cond_0
    return-void
.end method
