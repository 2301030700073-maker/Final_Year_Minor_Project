.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InBody"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    sub-int/2addr v1, v3

    .line 27
    :goto_0
    if-ltz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v3

    .line 57
    :cond_2
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return v3
.end method

.method public final process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v1, Lorg/jsoup/parser/Token;->type:I

    invoke-static {v3}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v3

    if-eqz v3, :cond_b9

    const-string v5, "h5"

    const-string v6, "h4"

    const-string v8, "h3"

    const-string v9, "h2"

    const-string v11, "h1"

    const-string v12, "dt"

    const-string v13, "dd"

    const-string v14, "p"

    const-string v15, "li"

    const-string v10, "br"

    const/16 v18, 0x0

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    move-object/from16 v20, v7

    const-string/jumbo v7, "template"

    move-object/from16 v21, v4

    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    move-object/from16 v22, v4

    const-string v4, "body"

    move-object/from16 v23, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_50

    move/from16 v25, v7

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    move-object/from16 v26, v14

    const/4 v14, 0x2

    if-eq v3, v14, :cond_5

    const/4 v14, 0x3

    if-eq v3, v14, :cond_4

    const/4 v14, 0x4

    if-eq v3, v14, :cond_2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 2
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->tmplInsertMode:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 4
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 7
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v25

    .line 8
    :cond_1
    iget v0, v1, Lorg/jsoup/parser/Token;->type:I

    invoke-static {v0}, Lcom/android/tools/r8/RecordTag;->stringValueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected state: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    return v18

    .line 10
    :cond_2
    move-object v0, v1

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    .line 11
    iget-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-static {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    move/from16 v1, v18

    .line 14
    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    return v25

    :cond_3
    move/from16 v1, v18

    .line 15
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 16
    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCharacterNode(Lorg/jsoup/parser/Token$Character;Z)V

    .line 17
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v25

    .line 18
    :cond_4
    move-object v0, v1

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    .line 19
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    return v25

    :cond_5
    const/4 v14, 0x4

    const/16 v19, 0x6

    .line 20
    move-object v3, v1

    check-cast v3, Lorg/jsoup/parser/Token$EndTag;

    .line 21
    invoke-virtual {v3}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v14

    .line 22
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    :goto_0
    move-object/from16 v5, v23

    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_4

    :sswitch_0
    const-string v5, "sarcasm"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/16 v5, 0x10

    goto :goto_2

    :sswitch_1
    const-string/jumbo v5, "span"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/16 v5, 0xf

    goto :goto_2

    :sswitch_2
    const-string v5, "html"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/16 v5, 0xe

    goto :goto_2

    :sswitch_3
    const-string v5, "form"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/16 v5, 0xd

    goto :goto_2

    :sswitch_4
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    const/16 v5, 0xc

    goto :goto_2

    :sswitch_5
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    const/16 v5, 0xb

    goto :goto_2

    :sswitch_6
    const-string v5, "h6"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_0

    :cond_c
    const/16 v5, 0xa

    goto :goto_2

    :sswitch_7
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_0

    :cond_d
    const/16 v5, 0x9

    :goto_2
    move/from16 v16, v5

    goto :goto_3

    :sswitch_8
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_0

    :cond_e
    move-object/from16 v5, v23

    const/16 v16, 0x8

    goto/16 :goto_4

    :sswitch_9
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_0

    :cond_f
    move-object/from16 v5, v23

    const/16 v16, 0x7

    goto/16 :goto_4

    :sswitch_a
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    :cond_10
    move/from16 v16, v19

    :goto_3
    move-object/from16 v5, v23

    goto :goto_4

    :sswitch_b
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_0

    :cond_11
    move-object/from16 v5, v23

    const/16 v16, 0x5

    goto :goto_4

    :sswitch_c
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_0

    :cond_12
    move-object/from16 v5, v23

    const/16 v16, 0x4

    goto :goto_4

    :sswitch_d
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_0

    :cond_13
    move-object/from16 v5, v23

    const/16 v16, 0x3

    goto :goto_4

    :sswitch_e
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_0

    :cond_14
    move-object/from16 v5, v23

    const/16 v16, 0x2

    goto :goto_4

    :sswitch_f
    move-object/from16 v5, v26

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_0

    :cond_15
    move-object/from16 v5, v23

    move/from16 v16, v25

    goto :goto_4

    :sswitch_10
    move-object/from16 v5, v23

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v16, 0x0

    .line 23
    :goto_4
    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilder;->TagsSearchInScope:[Ljava/lang/String;

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    const-string v9, "http://www.w3.org/1999/xhtml"

    packed-switch v16, :pswitch_data_0

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v14, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 24
    iget-object v3, v3, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 25
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 26
    iget-object v5, v5, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 27
    iget-object v5, v5, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 28
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v5

    .line 29
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 30
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    return v25

    :cond_17
    const/4 v5, 0x0

    :goto_5
    const/16 v7, 0x8

    if-lt v5, v7, :cond_18

    :goto_6
    move/from16 v4, v25

    goto/16 :goto_c

    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 31
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_7
    if-ltz v6, :cond_1b

    .line 32
    iget-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/Element;

    if-nez v8, :cond_19

    goto :goto_8

    .line 33
    :cond_19
    iget-object v10, v8, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 34
    iget-object v10, v10, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 35
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_9

    :cond_1a
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_1b
    :goto_8
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_1c

    .line 36
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v4

    goto :goto_c

    .line 37
    :cond_1c
    iget-object v6, v8, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 38
    iget-object v10, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 39
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 40
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto :goto_6

    .line 41
    :cond_1d
    iget-object v10, v6, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 43
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 v4, 0x0

    goto :goto_c

    .line 44
    :cond_1e
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v10

    if-eq v10, v8, :cond_1f

    .line 45
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 46
    :cond_1f
    iget-object v10, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_21

    :cond_20
    add-int/lit8 v11, v11, 0x1

    .line 48
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_21

    .line 49
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 50
    invoke-static {v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v13

    if-eqz v13, :cond_20

    goto :goto_a

    :cond_21
    const/4 v12, 0x0

    :goto_a
    if-nez v12, :cond_23

    .line 51
    :goto_b
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eq v0, v8, :cond_22

    .line 52
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    goto :goto_b

    .line 53
    :cond_22
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 54
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_6

    .line 55
    :cond_23
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v10

    if-nez v10, :cond_24

    .line 56
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_6

    :goto_c
    return v4

    :cond_24
    const/4 v11, 0x0

    .line 57
    :goto_d
    iget-object v13, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_26

    .line 58
    iget-object v13, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v8, v13, :cond_25

    goto :goto_e

    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_26
    const/4 v11, -0x1

    :goto_e
    move-object v14, v12

    move-object v15, v14

    const/4 v13, 0x0

    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 59
    iget-object v7, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 60
    iget-object v7, v14, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    :goto_10
    move-object v14, v7

    goto :goto_11

    .line 61
    :cond_27
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v7

    goto :goto_10

    :goto_11
    if-eqz v14, :cond_28

    .line 62
    invoke-virtual {v14, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    :cond_28
    move-object/from16 v16, v3

    move/from16 v17, v5

    goto/16 :goto_18

    :cond_29
    if-ne v14, v8, :cond_2a

    :goto_12
    move-object/from16 v16, v3

    move/from16 v17, v5

    goto/16 :goto_19

    :cond_2a
    const/4 v7, 0x3

    if-le v13, v7, :cond_2b

    .line 63
    iget-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 64
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto :goto_12

    .line 65
    :cond_2b
    iget-object v7, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 66
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    const/16 v7, 0x8

    goto :goto_f

    .line 67
    :cond_2c
    iget-object v7, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/util/ArrayList;Lorg/jsoup/nodes/Element;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 68
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 69
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto :goto_12

    .line 70
    :cond_2d
    new-instance v7, Lorg/jsoup/nodes/Element;

    move-object/from16 v16, v3

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v3

    move/from16 v17, v5

    .line 71
    iget-object v5, v14, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 72
    iget-object v5, v5, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    move/from16 v19, v13

    .line 73
    iget-object v13, v2, Lorg/jsoup/parser/TreeBuilder;->tagSet:Lorg/jsoup/parser/TagSet;

    move/from16 v1, v25

    invoke-virtual {v13, v3, v5, v9, v1}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    move-result-object v3

    .line 74
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    const/4 v5, 0x0

    .line 75
    invoke-direct {v7, v3, v1, v5}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 76
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2e

    const/4 v13, 0x1

    goto :goto_13

    :cond_2e
    const/4 v13, 0x0

    .line 78
    :goto_13
    invoke-static {v13}, Landroidx/sqlite/SQLite;->isTrue(Z)V

    .line 79
    invoke-virtual {v1, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_14

    :cond_2f
    const/4 v5, 0x0

    .line 82
    :goto_14
    invoke-static {v5}, Landroidx/sqlite/SQLite;->isTrue(Z)V

    .line 83
    invoke-virtual {v1, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v15, v12, :cond_32

    const/4 v1, 0x0

    .line 84
    :goto_15
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 85
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v7, v3, :cond_30

    :goto_16
    const/16 v25, 0x1

    goto :goto_17

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_31
    const/4 v1, -0x1

    goto :goto_16

    :goto_17
    add-int/lit8 v1, v1, 0x1

    move v11, v1

    .line 86
    :cond_32
    invoke-virtual {v7, v15}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    move-object/from16 v1, p1

    move-object v14, v7

    move-object v15, v14

    move-object/from16 v3, v16

    move/from16 v5, v17

    move/from16 v13, v19

    const/16 v7, 0x8

    const/16 v25, 0x1

    goto/16 :goto_f

    .line 87
    :goto_18
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 88
    :goto_19
    invoke-virtual {v10, v15}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 89
    new-instance v1, Lorg/jsoup/nodes/Element;

    .line 90
    iget-object v3, v2, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    const/4 v5, 0x0

    .line 91
    invoke-direct {v1, v6, v3, v5}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 92
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v3

    invoke-virtual {v8}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 93
    invoke-virtual {v12}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Node;

    .line 94
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    goto :goto_1a

    .line 95
    :cond_33
    invoke-virtual {v12, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 96
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 97
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 98
    :try_start_0
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    .line 99
    :catch_0
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_1b
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 101
    iget-object v3, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_34

    .line 102
    const-string v3, "Did not find element on stack to insert after"

    const/4 v5, 0x0

    .line 103
    invoke-virtual {v2, v3, v5}, Lorg/jsoup/parser/TreeBuilder;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v3, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 105
    :cond_34
    iget-object v5, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1c
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v5, v17

    const/16 v25, 0x1

    goto/16 :goto_5

    .line 106
    :cond_35
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v14, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 107
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 108
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_1d
    const/4 v1, 0x0

    return v1

    :cond_36
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 110
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 111
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 112
    :cond_37
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :cond_38
    move-object/from16 v1, v22

    .line 113
    invoke-static {v14, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 114
    const-string v1, "name"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 115
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 116
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_1d

    :cond_39
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 118
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 119
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 120
    :cond_3a
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    const/16 v25, 0x1

    return v25

    :cond_3b
    :goto_1e
    const/16 v25, 0x1

    goto/16 :goto_2c

    .line 122
    :cond_3c
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0

    .line 123
    :pswitch_0
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_1
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 125
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v18, 0x0

    return v18

    .line 126
    :cond_3d
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 127
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 128
    :cond_3e
    iput-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v3, p1

    .line 129
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 130
    :pswitch_2
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 131
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    const/4 v5, 0x0

    .line 132
    iput-object v5, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    if-eqz v1, :cond_3f

    .line 133
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3f
    const/4 v3, 0x0

    goto :goto_1f

    :cond_40
    const/4 v3, 0x0

    .line 134
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 135
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 136
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 137
    :cond_41
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    const/16 v25, 0x1

    return v25

    .line 138
    :goto_1f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    :cond_42
    const/4 v3, 0x0

    .line 139
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 140
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 141
    :cond_43
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 142
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 143
    :cond_44
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_3
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 145
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 146
    :cond_45
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStackNot([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 147
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 148
    :cond_46
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 149
    iput-object v8, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v25, 0x1

    return v25

    :pswitch_4
    const/4 v3, 0x0

    .line 150
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->specificScopeTarget:[Ljava/lang/String;

    aput-object v14, v1, v3

    .line 151
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilder;->TagSearchList:[Ljava/lang/String;

    invoke-virtual {v2, v1, v6, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 152
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 153
    :cond_47
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 155
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 156
    :cond_48
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_5
    move-object/from16 v1, v21

    const/4 v5, 0x0

    .line 157
    invoke-virtual {v2, v1, v6, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->inSpecificScope([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 158
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v18, 0x0

    return v18

    .line 159
    :cond_49
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 161
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 162
    :cond_4a
    iget-object v0, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v25, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_20
    if-ltz v0, :cond_3b

    .line 163
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 164
    iget-object v4, v3, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 165
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 166
    invoke-static {v4, v1}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 167
    iget-object v3, v3, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 168
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 169
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto/16 :goto_1e

    :cond_4b
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 170
    :pswitch_6
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 171
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/16 v18, 0x0

    return v18

    .line 172
    :cond_4c
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 174
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 175
    :cond_4d
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_7
    const/16 v18, 0x0

    .line 176
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 177
    invoke-virtual {v2, v10}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)V

    return v18

    .line 178
    :pswitch_8
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 179
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 180
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 182
    :cond_4e
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 184
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 185
    :cond_4f
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    const/16 v25, 0x1

    return v25

    :pswitch_9
    move-object v3, v1

    move-object/from16 v14, v20

    .line 186
    invoke-virtual {v14, v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    return v25

    :cond_50
    move-object v3, v1

    move-object v7, v14

    move-object/from16 v14, v20

    move-object/from16 v28, v21

    move-object/from16 v1, v22

    move-object/from16 v29, v23

    const/16 v19, 0x6

    .line 187
    move-object v0, v3

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 188
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :goto_21
    const/16 v24, -0x1

    goto/16 :goto_23

    :sswitch_11
    const-string v5, "noembed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_21

    :cond_51
    const/16 v5, 0x36

    goto/16 :goto_22

    :sswitch_12
    const-string v5, "plaintext"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto :goto_21

    :cond_52
    const/16 v5, 0x35

    goto/16 :goto_22

    :sswitch_13
    const-string v5, "listing"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto :goto_21

    :cond_53
    const/16 v5, 0x34

    goto/16 :goto_22

    :sswitch_14
    const-string/jumbo v5, "table"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_21

    :cond_54
    const/16 v5, 0x33

    goto/16 :goto_22

    :sswitch_15
    const-string/jumbo v5, "small"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_21

    :cond_55
    const/16 v5, 0x32

    goto/16 :goto_22

    :sswitch_16
    const-string v5, "input"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_21

    :cond_56
    const/16 v5, 0x31

    goto/16 :goto_22

    :sswitch_17
    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    goto :goto_21

    :cond_57
    const/16 v5, 0x30

    goto/16 :goto_22

    :sswitch_18
    const-string v5, "embed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto :goto_21

    :cond_58
    const/16 v5, 0x2f

    goto/16 :goto_22

    :sswitch_19
    const-string/jumbo v5, "span"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto :goto_21

    :cond_59
    const/16 v5, 0x2e

    goto/16 :goto_22

    :sswitch_1a
    const-string v5, "nobr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto/16 :goto_21

    :cond_5a
    const/16 v5, 0x2d

    goto/16 :goto_22

    :sswitch_1b
    const-string v5, "math"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto/16 :goto_21

    :cond_5b
    const/16 v5, 0x2c

    goto/16 :goto_22

    :sswitch_1c
    const-string v5, "html"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto/16 :goto_21

    :cond_5c
    const/16 v5, 0x2b

    goto/16 :goto_22

    :sswitch_1d
    const-string v5, "form"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto/16 :goto_21

    :cond_5d
    const/16 v5, 0x2a

    goto/16 :goto_22

    :sswitch_1e
    const-string v5, "font"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    goto/16 :goto_21

    :cond_5e
    const/16 v5, 0x29

    goto/16 :goto_22

    :sswitch_1f
    const-string v5, "code"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto/16 :goto_21

    :cond_5f
    const/16 v5, 0x28

    goto/16 :goto_22

    :sswitch_20
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    goto/16 :goto_21

    :cond_60
    const/16 v5, 0x27

    goto/16 :goto_22

    :sswitch_21
    const-string v5, "area"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    goto/16 :goto_21

    :cond_61
    const/16 v5, 0x26

    goto/16 :goto_22

    :sswitch_22
    const-string/jumbo v5, "xmp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto/16 :goto_21

    :cond_62
    const/16 v5, 0x25

    goto/16 :goto_22

    :sswitch_23
    const-string/jumbo v5, "wbr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    goto/16 :goto_21

    :cond_63
    const/16 v5, 0x24

    goto/16 :goto_22

    :sswitch_24
    const-string/jumbo v5, "svg"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto/16 :goto_21

    :cond_64
    const/16 v5, 0x23

    goto/16 :goto_22

    :sswitch_25
    const-string v5, "rtc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto/16 :goto_21

    :cond_65
    const/16 v5, 0x22

    goto/16 :goto_22

    :sswitch_26
    const-string v5, "pre"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    goto/16 :goto_21

    :cond_66
    const/16 v5, 0x21

    goto/16 :goto_22

    :sswitch_27
    const-string v5, "img"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    goto/16 :goto_21

    :cond_67
    const/16 v5, 0x20

    goto/16 :goto_22

    :sswitch_28
    const-string v5, "big"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    goto/16 :goto_21

    :cond_68
    const/16 v5, 0x1f

    goto/16 :goto_22

    :sswitch_29
    const-string/jumbo v5, "tt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    goto/16 :goto_21

    :cond_69
    const/16 v5, 0x1e

    goto/16 :goto_22

    :sswitch_2a
    const-string v5, "rt"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto/16 :goto_21

    :cond_6a
    const/16 v5, 0x1d

    goto/16 :goto_22

    :sswitch_2b
    const-string v5, "rp"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto/16 :goto_21

    :cond_6b
    const/16 v5, 0x1c

    goto/16 :goto_22

    :sswitch_2c
    const-string v5, "rb"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto/16 :goto_21

    :cond_6c
    const/16 v5, 0x1b

    goto/16 :goto_22

    :sswitch_2d
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto/16 :goto_21

    :cond_6d
    const/16 v5, 0x1a

    goto/16 :goto_22

    :sswitch_2e
    const-string v5, "hr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto/16 :goto_21

    :cond_6e
    const/16 v5, 0x19

    goto/16 :goto_22

    :sswitch_2f
    const-string v5, "h6"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto/16 :goto_21

    :cond_6f
    const/16 v5, 0x18

    goto/16 :goto_22

    :sswitch_30
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto/16 :goto_21

    :cond_70
    const/16 v5, 0x17

    goto/16 :goto_22

    :sswitch_31
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto/16 :goto_21

    :cond_71
    const/16 v5, 0x16

    goto/16 :goto_22

    :sswitch_32
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    goto/16 :goto_21

    :cond_72
    const/16 v5, 0x15

    goto/16 :goto_22

    :sswitch_33
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    goto/16 :goto_21

    :cond_73
    const/16 v5, 0x14

    goto/16 :goto_22

    :sswitch_34
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_21

    :cond_74
    const/16 v5, 0x13

    goto/16 :goto_22

    :sswitch_35
    const-string v5, "em"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto/16 :goto_21

    :cond_75
    const/16 v5, 0x12

    goto/16 :goto_22

    :sswitch_36
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    goto/16 :goto_21

    :cond_76
    const/16 v5, 0x11

    goto/16 :goto_22

    :sswitch_37
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_21

    :cond_77
    const/16 v5, 0x10

    goto :goto_22

    :sswitch_38
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    goto/16 :goto_21

    :cond_78
    const/16 v5, 0xf

    goto :goto_22

    :sswitch_39
    const-string/jumbo v5, "u"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto/16 :goto_21

    :cond_79
    const/16 v5, 0xe

    goto :goto_22

    :sswitch_3a
    const-string v5, "s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    goto/16 :goto_21

    :cond_7a
    const/16 v5, 0xd

    goto :goto_22

    :sswitch_3b
    const-string v5, "i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    goto/16 :goto_21

    :cond_7b
    const/16 v5, 0xc

    goto :goto_22

    :sswitch_3c
    const-string v5, "b"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    goto/16 :goto_21

    :cond_7c
    const/16 v5, 0xb

    goto :goto_22

    :sswitch_3d
    const-string v5, "a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto/16 :goto_21

    :cond_7d
    const/16 v5, 0xa

    goto :goto_22

    :sswitch_3e
    const-string v5, "optgroup"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto/16 :goto_21

    :cond_7e
    const/16 v5, 0x9

    :goto_22
    move/from16 v24, v5

    goto/16 :goto_23

    :sswitch_3f
    const-string/jumbo v5, "strong"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    goto/16 :goto_21

    :cond_7f
    const/16 v24, 0x8

    goto/16 :goto_23

    :sswitch_40
    const-string/jumbo v5, "strike"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    goto/16 :goto_21

    :cond_80
    const/16 v24, 0x7

    goto :goto_23

    :sswitch_41
    const-string v5, "select"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    goto/16 :goto_21

    :cond_81
    move/from16 v24, v19

    goto :goto_23

    :sswitch_42
    const-string/jumbo v5, "textarea"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    goto/16 :goto_21

    :cond_82
    const/16 v24, 0x5

    goto :goto_23

    :sswitch_43
    const-string v5, "option"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    goto/16 :goto_21

    :cond_83
    const/16 v24, 0x4

    goto :goto_23

    :sswitch_44
    const-string v5, "keygen"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    goto/16 :goto_21

    :cond_84
    const/16 v24, 0x3

    goto :goto_23

    :sswitch_45
    const-string v5, "iframe"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    goto/16 :goto_21

    :cond_85
    const/16 v24, 0x2

    goto :goto_23

    :sswitch_46
    const-string v5, "button"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    goto/16 :goto_21

    :cond_86
    const/16 v24, 0x1

    goto :goto_23

    :sswitch_47
    const-string v5, "frameset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    goto/16 :goto_21

    :cond_87
    const/16 v24, 0x0

    .line 190
    :goto_23
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    const-string v8, "ruby"

    packed-switch v24, :pswitch_data_1

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    move-result-object v5

    if-eqz v5, :cond_88

    .line 192
    invoke-static {v0, v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    const/16 v25, 0x1

    return v25

    :cond_88
    const/16 v25, 0x1

    .line 193
    iget v4, v4, Lorg/jsoup/parser/Tag;->options:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8f

    .line 194
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 195
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 196
    :cond_89
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 197
    :cond_8a
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 198
    invoke-virtual {v14, v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v0

    return v0

    :cond_8b
    move-object/from16 v3, v22

    .line 199
    invoke-static {v1, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 200
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 201
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 202
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 203
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    const/16 v25, 0x1

    return v25

    :cond_8c
    const/4 v3, 0x0

    const/16 v25, 0x1

    .line 204
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 205
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 206
    :cond_8d
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    move-object/from16 v1, p0

    .line 207
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 208
    :cond_8e
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 209
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    .line 210
    :cond_8f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_a
    const/16 v25, 0x1

    .line 211
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v25

    :pswitch_b
    const/16 v25, 0x1

    .line 212
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 213
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 214
    :cond_90
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 215
    iget-object v0, v2, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState$7;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    return v25

    .line 216
    :pswitch_c
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 217
    iget v1, v1, Lorg/jsoup/nodes/Document;->quirksMode:I

    const/4 v14, 0x2

    if-eq v1, v14, :cond_91

    .line 218
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 219
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 220
    :cond_91
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 222
    iput-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/16 v25, 0x1

    return v25

    :pswitch_d
    const/4 v1, 0x0

    const/16 v25, 0x1

    .line 223
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 224
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 225
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hidden"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 226
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v25

    :pswitch_e
    const/16 v25, 0x1

    .line 227
    const-string/jumbo v1, "svg"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_92

    .line 228
    const-string v1, "img"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$Tag;->name(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 229
    :cond_92
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_f
    const/16 v25, 0x1

    .line 230
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 231
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_10
    move-object/from16 v1, p0

    .line 232
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 233
    const-string v3, "nobr"

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 234
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 235
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 236
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 237
    :cond_93
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 238
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 239
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    return v25

    :pswitch_11
    const/16 v25, 0x1

    .line 240
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 241
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    return v25

    :pswitch_12
    move-object/from16 v1, p0

    .line 242
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    move-object/from16 v5, v29

    .line 243
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    :cond_94
    :goto_24
    const/16 v18, 0x0

    goto/16 :goto_2f

    .line 244
    :cond_95
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3b

    .line 246
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 248
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    const/16 v25, 0x1

    return v25

    :pswitch_13
    move-object/from16 v1, p0

    move-object/from16 v5, v29

    const/4 v3, 0x0

    .line 249
    iget-object v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formElement:Lorg/jsoup/nodes/FormElement;

    if-eqz v4, :cond_96

    .line 250
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 251
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 252
    :cond_96
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 253
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v1

    .line 255
    iget-object v1, v1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 256
    iget-object v1, v1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 257
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 258
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 259
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 260
    :cond_97
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    :cond_98
    const/4 v3, 0x1

    .line 261
    invoke-virtual {v2, v0, v3, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertFormElement(Lorg/jsoup/parser/Token$StartTag;ZZ)V

    return v3

    :pswitch_14
    move-object/from16 v1, p0

    move-object/from16 v5, v29

    const/4 v3, 0x1

    .line 262
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 263
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x2

    if-lt v6, v14, :cond_94

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v14, :cond_99

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    :cond_99
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    goto :goto_24

    :cond_9a
    const/4 v1, 0x0

    .line 265
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 266
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 267
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V

    const/16 v25, 0x1

    return v25

    .line 268
    :pswitch_15
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 269
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 270
    :cond_9b
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    const/4 v1, 0x0

    .line 271
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 272
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    const/16 v25, 0x1

    return v25

    :pswitch_16
    const/16 v25, 0x1

    .line 273
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 274
    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertForeignElementFor(Lorg/jsoup/parser/Token$StartTag;Ljava/lang/String;)V

    return v25

    :pswitch_17
    const/16 v25, 0x1

    .line 275
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 276
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 277
    :cond_9c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 278
    iget-object v0, v2, Lorg/jsoup/parser/TreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v25

    :pswitch_18
    move-object/from16 v1, p0

    .line 280
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 281
    const-string v3, "rtc"

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 283
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 284
    :cond_9d
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_19
    move-object/from16 v1, p0

    const/16 v25, 0x1

    .line 285
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const/4 v3, 0x0

    .line 286
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Z)V

    .line 287
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 288
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 289
    :cond_9e
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v25

    :pswitch_1a
    const/4 v3, 0x0

    const/16 v25, 0x1

    .line 290
    iput-boolean v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 291
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_25
    if-lez v3, :cond_a1

    .line 293
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 294
    invoke-virtual {v4, v15}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 295
    invoke-virtual {v2, v15}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_26

    .line 296
    :cond_9f
    invoke-static {v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 297
    iget-object v4, v4, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 298
    iget-object v4, v4, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 299
    invoke-static {v4, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a0

    goto :goto_26

    :cond_a0
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    .line 300
    :cond_a1
    :goto_26
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 301
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 302
    :cond_a2
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_1b
    const/16 v25, 0x1

    .line 303
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 304
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 305
    :cond_a3
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 306
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v25

    :pswitch_1c
    move-object/from16 v1, p0

    .line 307
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 308
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 309
    :cond_a4
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 310
    iget-object v3, v3, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 311
    iget-object v3, v3, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    move-object/from16 v4, v28

    .line 312
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 313
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 314
    invoke-virtual {v2}, Lorg/jsoup/parser/TreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 315
    :cond_a5
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_1d
    const/4 v1, 0x0

    .line 316
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 317
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/16 v6, 0x18

    if-lt v4, v6, :cond_a6

    add-int/lit8 v3, v3, -0x19

    goto :goto_27

    :cond_a6
    const/4 v3, 0x0

    :goto_27
    if-lt v4, v3, :cond_a9

    .line 319
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 320
    iget-object v8, v6, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 321
    iget-object v9, v8, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    iget-object v8, v8, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 322
    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 323
    invoke-virtual {v2, v8}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_28

    .line 324
    :cond_a7
    invoke-static {v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_a8

    invoke-static {v8, v5}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a8

    goto :goto_28

    :cond_a8
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    .line 325
    :cond_a9
    :goto_28
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 326
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 327
    :cond_aa
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/16 v25, 0x1

    return v25

    :pswitch_1e
    const/4 v5, 0x0

    move-object/from16 v1, p0

    const/16 v25, 0x1

    .line 328
    iget-object v3, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_29
    const-string v4, "a"

    if-ltz v3, :cond_ad

    .line 330
    iget-object v6, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Element;

    if-nez v6, :cond_ab

    goto :goto_2a

    .line 331
    :cond_ab
    invoke-virtual {v6, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ac

    move-object v7, v6

    goto :goto_2b

    :cond_ac
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_ad
    :goto_2a
    move-object v7, v5

    :goto_2b
    if-eqz v7, :cond_ae

    .line 332
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 333
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 334
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 335
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 336
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)V

    .line 337
    :cond_ae
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 338
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 339
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 340
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v25, 0x1

    return v25

    :pswitch_1f
    const/16 v25, 0x1

    .line 341
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 342
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 343
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->checkActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 344
    iget-object v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->formattingElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v25

    :pswitch_20
    const/16 v25, 0x1

    .line 345
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 346
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 347
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 348
    iget-boolean v0, v0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    if-eqz v0, :cond_b0

    :cond_af
    :goto_2c
    return v25

    .line 349
    :cond_b0
    iget-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 350
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_b1
    const/4 v3, 0x1

    goto :goto_2d

    .line 351
    :cond_b2
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 352
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 v3, 0x1

    return v3

    .line 353
    :goto_2d
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 354
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v3

    :pswitch_21
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 355
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 356
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v3

    :pswitch_22
    const/4 v3, 0x1

    .line 357
    const-string v1, "option"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 358
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 359
    :cond_b3
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 360
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return v3

    :pswitch_23
    const/4 v3, 0x1

    .line 361
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 362
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmptyElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 363
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v3

    :pswitch_24
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 364
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    .line 365
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/TreeBuilder;->tagFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/parser/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Tag;->textState()Lorg/jsoup/parser/TokeniserState;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;Lorg/jsoup/parser/TokeniserState;)V

    return v3

    :pswitch_25
    move-object/from16 v1, p0

    const/4 v3, 0x1

    .line 366
    const-string v4, "button"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 367
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 368
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 369
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    return v3

    .line 370
    :cond_b4
    invoke-virtual {v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 371
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    const/4 v1, 0x0

    .line 372
    iput-boolean v1, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    return v3

    :pswitch_26
    move-object/from16 v1, p0

    const/4 v3, 0x1

    .line 373
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 374
    iget-object v1, v2, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 375
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v14, 0x2

    if-lt v5, v14, :cond_94

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_b5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b5

    goto/16 :goto_24

    .line 376
    :cond_b5
    iget-boolean v4, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk:Z

    if-nez v4, :cond_b6

    goto/16 :goto_24

    .line 377
    :cond_b6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 378
    iget-object v5, v4, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    if-eqz v5, :cond_b7

    .line 379
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->remove()V

    .line 380
    :cond_b7
    :goto_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_b8

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    .line 382
    :cond_b8
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 383
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 384
    iput-object v0, v2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    return v3

    :goto_2f
    return v18

    :cond_b9
    move-object v1, v0

    const/16 v18, 0x0

    .line 385
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v18

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_47
        -0x521dd8ce -> :sswitch_46
        -0x47007d5c -> :sswitch_45
        -0x43a19f6f -> :sswitch_44
        -0x3c35778b -> :sswitch_43
        -0x3bcc48c6 -> :sswitch_42
        -0x3600cb04 -> :sswitch_41
        -0x352aa04e -> :sswitch_40
        -0x352a8969 -> :sswitch_3f
        -0x4d08054 -> :sswitch_3e
        0x61 -> :sswitch_3d
        0x62 -> :sswitch_3c
        0x69 -> :sswitch_3b
        0x73 -> :sswitch_3a
        0x75 -> :sswitch_39
        0xc50 -> :sswitch_38
        0xc80 -> :sswitch_37
        0xc90 -> :sswitch_36
        0xca8 -> :sswitch_35
        0xcc9 -> :sswitch_34
        0xcca -> :sswitch_33
        0xccb -> :sswitch_32
        0xccc -> :sswitch_31
        0xccd -> :sswitch_30
        0xcce -> :sswitch_2f
        0xd0a -> :sswitch_2e
        0xd7d -> :sswitch_2d
        0xe30 -> :sswitch_2c
        0xe3e -> :sswitch_2b
        0xe42 -> :sswitch_2a
        0xe80 -> :sswitch_29
        0x17d00 -> :sswitch_28
        0x197c3 -> :sswitch_27
        0x1b2a3 -> :sswitch_26
        0x1ba61 -> :sswitch_25
        0x1be64 -> :sswitch_24
        0x1cb07 -> :sswitch_23
        0x1d01b -> :sswitch_22
        0x2dd08d -> :sswitch_21
        0x2e39a2 -> :sswitch_20
        0x2eaded -> :sswitch_1f
        0x300c4f -> :sswitch_1e
        0x300cc4 -> :sswitch_1d
        0x3107ab -> :sswitch_1c
        0x330708 -> :sswitch_1b
        0x33add1 -> :sswitch_1a
        0x35f74a -> :sswitch_19
        0x5c24ed9 -> :sswitch_18
        0x5faa95b -> :sswitch_17
        0x5fb57ca -> :sswitch_16
        0x6879507 -> :sswitch_15
        0x6903bce -> :sswitch_14
        0xad8ba84 -> :sswitch_13
        0x759d29f7 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_23
        :pswitch_15
        :pswitch_23
        :pswitch_14
        :pswitch_1f
        :pswitch_1f
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_23
        :pswitch_e
        :pswitch_d
        :pswitch_1f
        :pswitch_c
        :pswitch_17
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
