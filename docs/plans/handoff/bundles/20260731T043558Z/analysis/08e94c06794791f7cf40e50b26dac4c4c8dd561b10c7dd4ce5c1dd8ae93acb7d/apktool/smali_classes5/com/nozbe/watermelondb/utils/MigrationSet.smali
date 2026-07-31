.class public Lcom/nozbe/watermelondb/utils/MigrationSet;
.super Ljava/lang/Object;
.source "MigrationSet.java"


# instance fields
.field public from:I

.field public sql:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/nozbe/watermelondb/utils/MigrationSet;->from:I

    .line 10
    iput p2, p0, Lcom/nozbe/watermelondb/utils/MigrationSet;->to:I

    .line 11
    iput-object p3, p0, Lcom/nozbe/watermelondb/utils/MigrationSet;->sql:Ljava/lang/String;

    return-void
.end method
