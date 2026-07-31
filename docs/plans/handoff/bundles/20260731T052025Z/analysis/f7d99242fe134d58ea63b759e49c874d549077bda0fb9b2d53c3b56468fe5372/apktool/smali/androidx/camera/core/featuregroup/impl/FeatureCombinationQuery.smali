.class public interface abstract Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/collection/internal/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/collection/internal/Lock;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract isSupported(Landroidx/camera/core/impl/SessionConfig;)Z
.end method
