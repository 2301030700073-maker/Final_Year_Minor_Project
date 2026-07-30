.class final Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MimeTypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIME_TYPE_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "vnd.android.cursor.item/name"

    const-string v1, "vnd.android.cursor.item/nickname"

    const-string v2, "vnd.android.cursor.item/organization"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    const-string v4, "vnd.android.cursor.item/sip_address"

    const-string v5, "vnd.android.cursor.item/email_v2"

    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    const-string v7, "vnd.android.cursor.item/im"

    const-string v8, "vnd.android.cursor.item/website"

    const-string v9, "vnd.android.cursor.item/contact_event"

    const-string v10, "vnd.android.cursor.item/relation"

    const-string v11, "vnd.android.cursor.item/note"

    const-string v12, "vnd.android.cursor.item/group_membership"

    .line 131
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;->MIME_TYPE_ORDER:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/RawContactEditorView$1;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    .line 153
    :cond_2
    sget-object v2, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;->MIME_TYPE_ORDER:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 154
    sget-object v3, Lcom/android/contacts/editor/RawContactEditorView$MimeTypeComparator;->MIME_TYPE_ORDER:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v2, :cond_3

    if-gez v3, :cond_3

    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    if-gez v2, :cond_4

    return v1

    :cond_4
    if-gez v3, :cond_5

    return v0

    :cond_5
    if-ge v2, v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
