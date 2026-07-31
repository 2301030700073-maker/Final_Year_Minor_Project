.class public abstract Landroidx/collection/LongSetKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final EmptyLongArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableLongSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableLongSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-array v0, v1, [J

    .line 8
    .line 9
    sput-object v0, Landroidx/collection/LongSetKt;->EmptyLongArray:[J

    .line 10
    .line 11
    return-void
.end method
