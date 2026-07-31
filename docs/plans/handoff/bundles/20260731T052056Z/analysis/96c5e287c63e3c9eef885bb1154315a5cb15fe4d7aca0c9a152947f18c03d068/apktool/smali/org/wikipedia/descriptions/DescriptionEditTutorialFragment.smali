.class public final Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;
.super Lorg/wikipedia/onboarding/OnboardingFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$ItemFragment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;",
        "Lorg/wikipedia/onboarding/OnboardingFragment;",
        "<init>",
        "()V",
        "DescriptionEditTutorialPagerAdapter",
        "ItemFragment",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final pages:[Ljava/lang/Integer;


# instance fields
.field public final doneButtonText:I

.field public showAIOnBoarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f0c02eb

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0c02ed

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0c02ec

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x3

    .line 23
    new-array v3, v3, [Ljava/lang/Integer;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v0, v3, v4

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object v1, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    aput-object v2, v3, v0

    .line 33
    .line 34
    sput-object v3, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->pages:[Ljava/lang/Integer;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/onboarding/OnboardingFragment;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const v0, 0x7f12012d

    .line 6
    .line 7
    .line 8
    iput v0, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->doneButtonText:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment$DescriptionEditTutorialPagerAdapter;-><init>(Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getDoneButtonText()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->doneButtonText:I

    .line 2
    .line 3
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "showAIOnBoarding"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;->showAIOnBoarding:Z

    .line 15
    .line 16
    return-void
.end method
