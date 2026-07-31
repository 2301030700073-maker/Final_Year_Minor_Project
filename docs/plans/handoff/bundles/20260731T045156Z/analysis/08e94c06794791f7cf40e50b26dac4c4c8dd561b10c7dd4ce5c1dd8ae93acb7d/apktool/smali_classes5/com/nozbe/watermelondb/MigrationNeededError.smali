.class public Lcom/nozbe/watermelondb/MigrationNeededError;
.super Ljava/lang/RuntimeException;
.source "MigrationNeededError.java"


# instance fields
.field public databaseVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    iput p1, p0, Lcom/nozbe/watermelondb/MigrationNeededError;->databaseVersion:I

    return-void
.end method
