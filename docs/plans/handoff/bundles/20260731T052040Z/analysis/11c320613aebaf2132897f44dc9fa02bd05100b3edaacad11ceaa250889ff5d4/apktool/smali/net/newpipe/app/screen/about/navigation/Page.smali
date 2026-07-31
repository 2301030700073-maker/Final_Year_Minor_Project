.class public final enum Lnet/newpipe/app/screen/about/navigation/Page;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lnet/newpipe/app/screen/about/navigation/Page;

.field public static final enum ABOUT:Lnet/newpipe/app/screen/about/navigation/Page;

.field public static final enum LICENSE:Lnet/newpipe/app/screen/about/navigation/Page;


# instance fields
.field private final localizedTitle:Lorg/jetbrains/compose/resources/StringResource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 2
    .line 3
    sget-object v1, Lnewpipe/shared/generated/resources/String0_commonMainKt;->tab_about$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 4
    .line 5
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lorg/jetbrains/compose/resources/StringResource;

    .line 10
    .line 11
    const-string v2, "ABOUT"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v2, v3, v1}, Lnet/newpipe/app/screen/about/navigation/Page;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lnet/newpipe/app/screen/about/navigation/Page;->ABOUT:Lnet/newpipe/app/screen/about/navigation/Page;

    .line 18
    .line 19
    new-instance v1, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 20
    .line 21
    sget-object v2, Lnewpipe/shared/generated/resources/String0_commonMainKt;->tab_licenses$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/jetbrains/compose/resources/StringResource;

    .line 28
    .line 29
    const-string v4, "LICENSE"

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    invoke-direct {v1, v4, v5, v2}, Lnet/newpipe/app/screen/about/navigation/Page;-><init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lnet/newpipe/app/screen/about/navigation/Page;->LICENSE:Lnet/newpipe/app/screen/about/navigation/Page;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Lnet/newpipe/app/screen/about/navigation/Page;

    .line 39
    .line 40
    aput-object v0, v2, v3

    .line 41
    .line 42
    aput-object v1, v2, v5

    .line 43
    .line 44
    sput-object v2, Lnet/newpipe/app/screen/about/navigation/Page;->$VALUES:[Lnet/newpipe/app/screen/about/navigation/Page;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/jetbrains/compose/resources/StringResource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lnet/newpipe/app/screen/about/navigation/Page;->localizedTitle:Lorg/jetbrains/compose/resources/StringResource;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/newpipe/app/screen/about/navigation/Page;
    .locals 1

    .line 1
    const-class v0, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/newpipe/app/screen/about/navigation/Page;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/newpipe/app/screen/about/navigation/Page;
    .locals 1

    .line 1
    sget-object v0, Lnet/newpipe/app/screen/about/navigation/Page;->$VALUES:[Lnet/newpipe/app/screen/about/navigation/Page;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/newpipe/app/screen/about/navigation/Page;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getLocalizedTitle()Lorg/jetbrains/compose/resources/StringResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/newpipe/app/screen/about/navigation/Page;->localizedTitle:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    return-object p0
.end method
