.class final Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;
.super Ljava/lang/Object;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "contact_id"

    const-string v1, "lookup"

    const-string v2, "raw_contact_id"

    const-string v3, "mimetype"

    const-string v4, "data1"

    const-string v5, "is_super_primary"

    const-string v6, "account_type"

    const-string v7, "account_name"

    const-string v8, "data_set"

    const-string v9, "_id"

    .line 277
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
