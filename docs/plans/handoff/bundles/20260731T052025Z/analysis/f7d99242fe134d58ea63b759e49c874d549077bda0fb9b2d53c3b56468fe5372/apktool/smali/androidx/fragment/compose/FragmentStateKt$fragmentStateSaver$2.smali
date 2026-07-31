.class public final Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;->INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    new-instance p0, Landroidx/fragment/compose/FragmentState;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/fragment/compose/FragmentState;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
