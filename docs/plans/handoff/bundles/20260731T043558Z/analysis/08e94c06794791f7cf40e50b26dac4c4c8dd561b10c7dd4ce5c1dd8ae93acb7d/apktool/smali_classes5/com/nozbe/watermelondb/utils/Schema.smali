.class public Lcom/nozbe/watermelondb/utils/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# instance fields
.field public sql:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/nozbe/watermelondb/utils/Schema;->version:I

    .line 9
    iput-object p2, p0, Lcom/nozbe/watermelondb/utils/Schema;->sql:Ljava/lang/String;

    return-void
.end method
