.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4745
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4719
    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 8
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    .line 4771
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 4772
    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, p1

    float-to-long v4, v6

    .line 4773
    .local v4, "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v6, :cond_0

    .line 4775
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4776
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4777
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4778
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4780
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4798
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 4799
    iget-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v2, p2, v6

    .line 4800
    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4801
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4802
    .local v0, "acc":F
    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    .line 4804
    sub-long v6, v4, v2

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 4805
    .local v1, "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    mul-float/2addr v0, v1

    .line 4809
    :cond_1
    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4820
    .end local v1    # "scale":F
    .end local v2    # "delta":J
    :cond_2
    :goto_2
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v6, p1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4821
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    return v6

    .line 4781
    .end local v4    # "normTime":J
    :cond_3
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 4782
    neg-float v6, p1

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v6, v7

    float-to-long v4, v6

    .line 4783
    .restart local v4    # "normTime":J
    iget v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v6, :cond_4

    .line 4785
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4786
    const/4 v6, 0x0

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4787
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4788
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4790
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto :goto_0

    .line 4792
    .end local v4    # "normTime":J
    :cond_5
    const-wide/16 v4, 0x0

    .restart local v4    # "normTime":J
    goto :goto_0

    .line 4809
    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    :cond_6
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    .line 4812
    .end local v1    # "scale":F
    :cond_7
    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x3ccccccd    # 0.025f

    mul-float v1, v6, v7

    .line 4813
    .restart local v1    # "scale":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_8

    div-float/2addr v0, v1

    .line 4817
    :cond_8
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_9

    .end local v0    # "acc":F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .restart local v0    # "acc":F
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method generate()I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 4833
    const/4 v2, 0x0

    .line 4834
    .local v2, "movement":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4836
    :goto_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    .line 4837
    .local v1, "dir":I
    :goto_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v3, :pswitch_data_0

    .line 4869
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 4870
    return v2

    .line 4836
    .end local v1    # "dir":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "dir":I
    goto :goto_1

    .line 4842
    :pswitch_0
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 4843
    return v2

    .line 4845
    :cond_1
    add-int/2addr v2, v1

    .line 4846
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4847
    const/4 v3, 0x1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 4853
    :pswitch_1
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    .line 4854
    return v2

    .line 4856
    :cond_2
    add-int/2addr v2, v1

    .line 4857
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 4858
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4859
    const/4 v3, 0x2

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 4872
    :cond_3
    add-int/2addr v2, v1

    .line 4873
    iget v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v4, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4874
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4875
    .local v0, "acc":F
    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v3

    .line 4876
    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .end local v0    # "acc":F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .restart local v0    # "acc":F
    :cond_4
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .line 4837
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    .prologue
    .line 4752
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4753
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4755
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4756
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4751
    return-void
.end method
