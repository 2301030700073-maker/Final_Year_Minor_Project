.class public final Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $fragment$inlined:Landroidx/fragment/app/Fragment;

.field public final synthetic $fragmentManager$inlined:Landroidx/fragment/app/FragmentManager;

.field public final synthetic $fragmentState$inlined:Landroidx/fragment/compose/FragmentState;

.field public final synthetic $removeEvenIfStateIsSaved$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/compose/FragmentState;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragmentManager$inlined:Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragment$inlined:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragmentState$inlined:Landroidx/fragment/compose/FragmentState;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$removeEvenIfStateIsSaved$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragmentManager$inlined:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragment$inlined:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$fragmentState$inlined:Landroidx/fragment/compose/FragmentState;

    .line 10
    .line 11
    iget-object v3, v3, Landroidx/fragment/compose/FragmentState;->state:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;->$removeEvenIfStateIsSaved$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 17
    .line 18
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const-string p0, "This transaction is already being added to the back stack"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 57
    .line 58
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method
