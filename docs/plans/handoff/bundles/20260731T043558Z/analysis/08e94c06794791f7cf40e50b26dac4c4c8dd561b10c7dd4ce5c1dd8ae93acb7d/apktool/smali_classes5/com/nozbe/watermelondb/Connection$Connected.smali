.class public Lcom/nozbe/watermelondb/Connection$Connected;
.super Lcom/nozbe/watermelondb/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nozbe/watermelondb/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connected"
.end annotation


# instance fields
.field public final driver:Lcom/nozbe/watermelondb/WMDatabaseDriver;


# direct methods
.method public constructor <init>(Lcom/nozbe/watermelondb/WMDatabaseDriver;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/nozbe/watermelondb/Connection;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/nozbe/watermelondb/Connection$Connected;->driver:Lcom/nozbe/watermelondb/WMDatabaseDriver;

    return-void
.end method
