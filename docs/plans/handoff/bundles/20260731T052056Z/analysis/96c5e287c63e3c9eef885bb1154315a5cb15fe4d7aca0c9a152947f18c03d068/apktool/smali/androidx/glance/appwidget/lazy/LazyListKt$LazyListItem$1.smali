.class public final synthetic Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$1;

    .line 2
    .line 3
    const-string v4, "<init>()V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 8
    .line 9
    const-string v3, "<init>"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$1;->INSTANCE:Landroidx/glance/appwidget/lazy/LazyListKt$LazyListItem$1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
