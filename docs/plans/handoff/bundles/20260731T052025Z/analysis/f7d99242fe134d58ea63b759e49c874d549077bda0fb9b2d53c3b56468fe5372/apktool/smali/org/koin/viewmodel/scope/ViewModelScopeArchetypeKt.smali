.class public abstract Lorg/koin/viewmodel/scope/ViewModelScopeArchetypeKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ViewModelScopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/koin/core/qualifier/TypeQualifier;

    .line 2
    .line 3
    const-class v1, Landroidx/lifecycle/ViewModel;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lorg/koin/core/qualifier/TypeQualifier;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/koin/viewmodel/scope/ViewModelScopeArchetypeKt;->ViewModelScopeArchetype:Lorg/koin/core/qualifier/TypeQualifier;

    .line 13
    .line 14
    return-void
.end method
