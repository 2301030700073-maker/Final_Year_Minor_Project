.class Lcom/android/contacts/editor/TextFieldsEditorView$3;
.super Ljava/lang/Object;
.source "TextFieldsEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStart:I

.field final synthetic this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

.field final synthetic val$column:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 325
    iput p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->mStart:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/LabeledEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v1, "#name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 338
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v2, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$500(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/text/Editable;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/contacts/editor/LabeledEditorView;->getPhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$602(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {p1, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$402(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 339
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$600(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->mStart:I

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/editor/LabeledEditorView;->updatePhonetic(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 351
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {p1}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string p2, "#name"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->getPhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$602(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->val$column:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$700(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$402(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 363
    iput p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->mStart:I

    .line 364
    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView$3;->this$0:Lcom/android/contacts/editor/TextFieldsEditorView;

    .line 365
    invoke-virtual {p2}, Lcom/android/contacts/editor/LabeledEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p2

    iget-object p2, p2, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string p3, "vnd.android.cursor.item/phone_v2"

    .line 364
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    instance-of p2, p1, Landroid/text/Spannable;

    if-nez p2, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    move-object p2, p1

    check-cast p2, Landroid/text/Spannable;

    .line 369
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const-class p4, Landroid/text/style/TtsSpan;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p3, p4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/TtsSpan;

    const/4 p4, 0x0

    .line 370
    :goto_0
    array-length v1, p3

    if-ge p4, v1, :cond_1

    .line 371
    aget-object v1, p3, p4

    invoke-interface {p2, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->addTtsSpan(Landroid/text/Spannable;II)V

    :cond_2
    :goto_1
    return-void
.end method
