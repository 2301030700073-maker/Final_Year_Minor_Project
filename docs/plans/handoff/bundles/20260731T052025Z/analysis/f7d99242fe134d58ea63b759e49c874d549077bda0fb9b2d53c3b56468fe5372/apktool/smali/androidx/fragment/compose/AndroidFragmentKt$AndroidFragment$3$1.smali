.class public final Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $arguments:Landroid/os/Bundle;

.field public final synthetic $containerFactory:Landroidx/fragment/compose/FragmentContainerViewFactory;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final synthetic $fragmentState:Landroidx/fragment/compose/FragmentState;

.field public final synthetic $hashKey:I

.field public final synthetic $updateCallback:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/compose/FragmentContainerViewFactory;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/fragment/compose/FragmentState;Landroid/os/Bundle;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$containerFactory:Landroidx/fragment/compose/FragmentContainerViewFactory;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$updateCallback:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$fragmentState:Landroidx/fragment/compose/FragmentState;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$arguments:Landroid/os/Bundle;

    .line 12
    .line 13
    iput p7, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$hashKey:I

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 2
    .line 3
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$containerFactory:Landroidx/fragment/compose/FragmentContainerViewFactory;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/compose/FragmentContainerViewFactory;->getContainer()Landroidx/fragment/app/FragmentContainerView;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v3, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$fragmentState:Landroidx/fragment/compose/FragmentState;

    .line 25
    .line 26
    if-nez v1, :cond_4

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v4, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 35
    .line 36
    .line 37
    const-class v4, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v4, v3, Landroidx/fragment/compose/FragmentState;->state:Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroidx/fragment/app/Fragment$SavedState;

    .line 54
    .line 55
    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/fragment/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v4, v6

    .line 68
    :goto_0
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$arguments:Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    new-instance v4, Landroidx/fragment/app/BackStackRecord;

    .line 76
    .line 77
    invoke-direct {v4, v2}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    iput-boolean v5, v4, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/compose/FragmentContainerViewFactory;->getContainer()Landroidx/fragment/app/FragmentContainerView;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    iget v8, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$hashKey:I

    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iput-object v7, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 94
    .line 95
    iput-boolean v5, v1, Landroidx/fragment/app/Fragment;->mInDynamicContainer:Z

    .line 96
    .line 97
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v4, v7, v1, v8, v5}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_2

    .line 109
    .line 110
    iput-boolean v5, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 111
    .line 112
    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 113
    .line 114
    new-instance v8, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$fragment$1$1;

    .line 115
    .line 116
    invoke-direct {v8, p1, v1}, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$fragment$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/fragment/app/Fragment;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v8}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v7, v4, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    .line 123
    .line 124
    if-nez v7, :cond_1

    .line 125
    .line 126
    const/4 v6, 0x0

    .line 127
    iput-boolean v6, v4, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 128
    .line 129
    iget-object v6, v4, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 130
    .line 131
    invoke-virtual {v6, v4, v5}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    const-string p0, "This transaction is already being added to the back stack"

    .line 136
    .line 137
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v6

    .line 141
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/BackStackRecord;->commitNow()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const-string p0, "Fragment already added"

    .line 146
    .line 147
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v6

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/compose/FragmentContainerViewFactory;->getContainer()Landroidx/fragment/app/FragmentContainerView;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->onContainerAvailable(Landroidx/fragment/app/FragmentContainerView;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1;->$updateCallback:Landroidx/compose/runtime/MutableState;

    .line 159
    .line 160
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 165
    .line 166
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    new-instance p0, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;

    .line 170
    .line 171
    invoke-direct {p0, v2, v1, v3, p1}, Landroidx/fragment/compose/AndroidFragmentKt$AndroidFragment$3$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroidx/fragment/compose/FragmentState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 172
    .line 173
    .line 174
    return-object p0
.end method
