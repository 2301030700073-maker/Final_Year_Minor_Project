.class Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;
.super Ljava/lang/Object;
.source "WMDatabaseDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nozbe/watermelondb/WMDatabaseDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SchemaCompatibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsMigration;,
        Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$NeedsSetup;,
        Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility$Compatible;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nozbe/watermelondb/WMDatabaseDriver-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/nozbe/watermelondb/WMDatabaseDriver$SchemaCompatibility;-><init>()V

    return-void
.end method
