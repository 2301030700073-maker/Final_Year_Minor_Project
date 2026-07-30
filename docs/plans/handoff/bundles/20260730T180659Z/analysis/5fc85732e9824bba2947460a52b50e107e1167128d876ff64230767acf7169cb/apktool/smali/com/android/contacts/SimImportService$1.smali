.class Lcom/android/contacts/SimImportService$1;
.super Ljava/lang/Object;
.source "SimImportService.java"

# interfaces
.implements Lcom/android/contacts/SimImportService$StatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SimImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isImporting(Lcom/android/contacts/model/SimCard;)Z
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/android/contacts/SimImportService;->access$100(Lcom/android/contacts/model/SimCard;)Z

    move-result p1

    return p1
.end method

.method public isRunning()Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/android/contacts/SimImportService;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
