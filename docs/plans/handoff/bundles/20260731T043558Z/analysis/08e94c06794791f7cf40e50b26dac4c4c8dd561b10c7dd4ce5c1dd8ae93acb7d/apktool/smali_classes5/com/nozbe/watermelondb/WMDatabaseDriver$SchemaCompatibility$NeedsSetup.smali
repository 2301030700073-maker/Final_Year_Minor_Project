.class Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;
.super Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
.source "WMDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeedsSetup"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;-><init>(Lcom/nozbe/watermelondb/WMDatabaseDriver-IA;)V

    return-void
.end method
