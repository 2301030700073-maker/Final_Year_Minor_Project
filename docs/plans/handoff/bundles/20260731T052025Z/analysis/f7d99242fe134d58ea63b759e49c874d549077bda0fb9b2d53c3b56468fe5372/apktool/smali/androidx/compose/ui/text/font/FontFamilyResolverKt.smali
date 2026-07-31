.class public abstract Landroidx/compose/ui/text/font/FontFamilyResolverKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final GlobalTypefaceRequestCache:Landroidx/compose/ui/platform/WeakCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/platform/WeakCache;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/WeakCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Landroidx/compose/ui/platform/WeakCache;

    .line 9
    .line 10
    new-instance v0, Landroidx/collection/LruCache;

    .line 11
    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 18
    .line 19
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
