.class Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;
.super Ljava/lang/Object;
.source "ExpandingEntryCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$000(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$100(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$2;->this$0:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    invoke-static {p1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->access$200(Lcom/android/contacts/quickcontact/ExpandingEntryCardView;)V

    :goto_0
    return-void
.end method
