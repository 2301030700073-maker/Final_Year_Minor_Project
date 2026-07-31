.class public final Lorg/wikipedia/compose/components/OnboardingItem;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final icon:I

.field public final subTitle:I

.field public final subtitleString:Ljava/lang/String;

.field public final title:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 7
    .line 8
    if-eqz p4, :cond_1

    .line 9
    .line 10
    const/4 p5, 0x0

    .line 11
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lorg/wikipedia/compose/components/OnboardingItem;->icon:I

    .line 15
    .line 16
    iput p2, p0, Lorg/wikipedia/compose/components/OnboardingItem;->title:I

    .line 17
    .line 18
    iput p3, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subTitle:I

    .line 19
    .line 20
    iput-object p5, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subtitleString:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/wikipedia/compose/components/OnboardingItem;

    .line 10
    .line 11
    iget v0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->icon:I

    .line 12
    .line 13
    iget v1, p1, Lorg/wikipedia/compose/components/OnboardingItem;->icon:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->title:I

    .line 19
    .line 20
    iget v1, p1, Lorg/wikipedia/compose/components/OnboardingItem;->title:I

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget v0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subTitle:I

    .line 26
    .line 27
    iget v1, p1, Lorg/wikipedia/compose/components/OnboardingItem;->subTitle:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subtitleString:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/wikipedia/compose/components/OnboardingItem;->subtitleString:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 45
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->icon:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lorg/wikipedia/compose/components/OnboardingItem;->title:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subTitle:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subtitleString:Ljava/lang/String;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    :goto_0
    add-int/2addr v0, p0

    .line 26
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", title="

    .line 2
    .line 3
    const-string v1, ", subTitle="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/compose/components/OnboardingItem;->icon:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/compose/components/OnboardingItem;->title:I

    .line 8
    .line 9
    const-string v4, "OnboardingItem(icon="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subTitle:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", subtitleString="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/compose/components/OnboardingItem;->subtitleString:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ")"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
