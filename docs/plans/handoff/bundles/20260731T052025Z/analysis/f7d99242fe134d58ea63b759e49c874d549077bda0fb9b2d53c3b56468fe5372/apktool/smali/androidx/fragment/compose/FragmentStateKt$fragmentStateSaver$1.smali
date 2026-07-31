.class public final Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;->INSTANCE:Landroidx/fragment/compose/FragmentStateKt$fragmentStateSaver$1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 2
    .line 3
    check-cast p2, Landroidx/fragment/compose/FragmentState;

    .line 4
    .line 5
    iget-object p0, p2, Landroidx/fragment/compose/FragmentState;->state:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    return-object p0
.end method
