.class Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;
.super Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
.source "WMDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeedsMigration"
.end annotation


# instance fields
.field final fromVersion:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver-IA;)V

    .line 244
    iput p1, p0, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;->fromVersion:I

    return-void
.end method
