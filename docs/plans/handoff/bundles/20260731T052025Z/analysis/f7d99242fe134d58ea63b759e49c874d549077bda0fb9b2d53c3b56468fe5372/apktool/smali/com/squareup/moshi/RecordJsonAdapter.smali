.class public abstract Lcom/squareup/moshi/RecordJsonAdapter;
.super Lcom/squareup/moshi/JsonAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final FACTORY:Lcom/squareup/moshi/MapJsonAdapter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/moshi/MapJsonAdapter$1;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/squareup/moshi/MapJsonAdapter$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/squareup/moshi/RecordJsonAdapter;->FACTORY:Lcom/squareup/moshi/MapJsonAdapter$1;

    .line 8
    .line 9
    return-void
.end method
