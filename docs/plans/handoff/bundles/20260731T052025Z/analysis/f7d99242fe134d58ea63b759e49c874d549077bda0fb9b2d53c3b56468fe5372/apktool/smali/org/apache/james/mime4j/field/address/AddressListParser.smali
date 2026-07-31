.class public final Lorg/apache/james/mime4j/field/address/AddressListParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/AddressListParserConstants;


# static fields
.field public static final jj_la1_0:[I

.field public static final jj_la1_1:[I


# instance fields
.field public final jj_2_rtns:[Lcom/fsck/k9/message/html/EmailSection$Builder;

.field public jj_endpos:I

.field public final jj_expentries:Ljava/util/ArrayList;

.field public jj_expentry:[I

.field public jj_gc:I

.field public jj_gen:I

.field public jj_kind:I

.field public jj_la:I

.field public final jj_la1:[I

.field public jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

.field public final jj_lasttokens:[I

.field public final jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

.field public jj_ntk:I

.field public jj_rescan:Z

.field public jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

.field public final jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

.field public token:Lorg/apache/james/mime4j/field/address/Token;

.field public final token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_0:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_1:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x2
        0x8040
        0x8
        0x8040
        0x50
        0x8040
        0x8040
        0x8040
        0x8
        0x8040
        0x100
        0x108
        0x8
        0x8000
        0x8000
        0x8000
        0x8200
        0x200
        0x8000
        0x8200
        0x200
        0x88000
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/io/TextInputStream;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 26
    .line 27
    iput v1, v0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 30
    .line 31
    const/16 v0, 0x16

    .line 32
    .line 33
    new-array v2, v0, [I

    .line 34
    .line 35
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 39
    .line 40
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 41
    .line 42
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 43
    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 45
    .line 46
    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/ArrayList;

    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 62
    .line 63
    const/16 v3, 0x64

    .line 64
    .line 65
    new-array v3, v3, [I

    .line 66
    .line 67
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    .line 68
    .line 69
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 70
    .line 71
    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;-><init>(Lorg/apache/james/mime4j/io/TextInputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    new-instance p1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 75
    .line 76
    invoke-direct {p1, v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 80
    .line 81
    new-instance p1, Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 87
    .line 88
    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 89
    .line 90
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 91
    .line 92
    move p1, v1

    .line 93
    :goto_0
    if-ge p1, v0, :cond_0

    .line 94
    .line 95
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 96
    .line 97
    aput v2, v3, p1

    .line 98
    .line 99
    add-int/lit8 p1, p1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 103
    .line 104
    array-length v0, p1

    .line 105
    if-ge v1, v0, :cond_1

    .line 106
    .line 107
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 108
    .line 109
    const/4 v2, 0x4

    .line 110
    invoke-direct {v0, v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(I)V

    .line 111
    .line 112
    .line 113
    aput-object v0, p1, v1

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    return-void

    .line 119
    :catch_0
    move-exception p0

    .line 120
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    const/4 p0, 0x0

    .line 124
    throw p0
.end method


# virtual methods
.method public final addr_spec()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->local_part()V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 31
    .line 32
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    check-cast v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 49
    .line 50
    throw v2

    .line 51
    :catchall_1
    move-exception v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    check-cast v2, Ljava/lang/Error;

    .line 54
    .line 55
    throw v2

    .line 56
    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :catchall_2
    move-exception v2

    .line 60
    const/4 v3, 0x1

    .line 61
    :goto_0
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 67
    .line 68
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 69
    .line 70
    :cond_2
    throw v2
.end method

.method public final address()V
    .locals 10

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTaddress;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const v4, 0x7fffffff

    .line 18
    .line 19
    .line 20
    :try_start_0
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 21
    .line 22
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 23
    .line 24
    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 25
    .line 26
    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    .line 29
    .line 30
    .line 31
    move-result v4
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    xor-int/2addr v4, v3

    .line 33
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v4

    .line 38
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 39
    .line 40
    .line 41
    throw v4

    .line 42
    :catch_0
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 43
    .line 44
    .line 45
    move v4, v3

    .line 46
    :goto_0
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception v4

    .line 53
    goto :goto_3

    .line 54
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 55
    .line 56
    const/4 v5, -0x1

    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 60
    .line 61
    .line 62
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_1
    const/4 v6, 0x6

    .line 64
    if-eq v4, v6, :cond_7

    .line 65
    .line 66
    const/16 v7, 0xf

    .line 67
    .line 68
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 69
    .line 70
    if-eq v4, v7, :cond_3

    .line 71
    .line 72
    const/16 v7, 0x20

    .line 73
    .line 74
    if-ne v4, v7, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :try_start_3
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 78
    .line 79
    const/4 v6, 0x5

    .line 80
    aput v4, v8, v6

    .line 81
    .line 82
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 83
    .line 84
    .line 85
    new-instance v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 86
    .line 87
    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw v4

    .line 91
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->phrase()V

    .line 92
    .line 93
    .line 94
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 95
    .line 96
    if-ne v4, v5, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    :cond_4
    const/4 v7, 0x4

    .line 103
    if-eq v4, v7, :cond_6

    .line 104
    .line 105
    if-ne v4, v6, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 112
    .line 113
    aput v4, v8, v7

    .line 114
    .line 115
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 116
    .line 117
    .line 118
    new-instance v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 119
    .line 120
    invoke-direct {v4}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 121
    .line 122
    .line 123
    throw v4

    .line 124
    :cond_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->group_body()V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 135
    .line 136
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 137
    .line 138
    return-void

    .line 139
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 140
    .line 141
    .line 142
    :try_start_5
    instance-of v3, v4, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    if-nez v3, :cond_9

    .line 145
    .line 146
    instance-of v3, v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 147
    .line 148
    if-eqz v3, :cond_8

    .line 149
    .line 150
    check-cast v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 151
    .line 152
    throw v4

    .line 153
    :catchall_2
    move-exception v3

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    check-cast v4, Ljava/lang/Error;

    .line 156
    .line 157
    throw v4

    .line 158
    :cond_9
    check-cast v4, Ljava/lang/RuntimeException;

    .line 159
    .line 160
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 161
    :catchall_3
    move-exception v2

    .line 162
    move v9, v3

    .line 163
    move-object v3, v2

    .line 164
    move v2, v9

    .line 165
    :goto_4
    if-eqz v2, :cond_a

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 171
    .line 172
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 173
    .line 174
    :cond_a
    throw v3
.end method

.method public final angle_addr()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    const/16 v3, 0x8

    .line 31
    .line 32
    if-eq v1, v3, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 35
    .line 36
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 37
    .line 38
    const/16 v4, 0xa

    .line 39
    .line 40
    aput v3, v1, v4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->route()V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 57
    .line 58
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 59
    .line 60
    return-void

    .line 61
    :goto_2
    :try_start_1
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 74
    .line 75
    throw v1

    .line 76
    :catchall_1
    move-exception v1

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    check-cast v1, Ljava/lang/Error;

    .line 79
    .line 80
    throw v1

    .line 81
    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :catchall_2
    move-exception v1

    .line 85
    const/4 v3, 0x1

    .line 86
    :goto_3
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 92
    .line 93
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 94
    .line 95
    :cond_4
    throw v1
.end method

.method public final domain()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTdomain;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto :goto_4

    .line 28
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 29
    .line 30
    const/16 v5, 0x13

    .line 31
    .line 32
    const/16 v6, 0xf

    .line 33
    .line 34
    if-eq v2, v6, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 43
    .line 44
    const/16 v5, 0x15

    .line 45
    .line 46
    aput v2, v4, v5

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v2

    .line 57
    :cond_2
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_1
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 62
    .line 63
    if-ne v7, v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    :cond_3
    const/16 v8, 0x9

    .line 70
    .line 71
    if-eq v7, v8, :cond_4

    .line 72
    .line 73
    if-eq v7, v6, :cond_4

    .line 74
    .line 75
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 76
    .line 77
    aput v2, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    :goto_2
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 83
    .line 84
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    :try_start_2
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 88
    .line 89
    if-ne v7, v3, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    :cond_5
    if-eq v7, v8, :cond_6

    .line 96
    .line 97
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 98
    .line 99
    const/16 v8, 0x14

    .line 100
    .line 101
    aput v7, v4, v8

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {p0, v8}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    :goto_3
    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    add-int/lit8 v7, v7, -0x1

    .line 115
    .line 116
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/16 v7, 0x2e

    .line 121
    .line 122
    if-ne v2, v7, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_1

    .line 129
    :cond_7
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 130
    .line 131
    const-string v3, "Atoms in domain names must be separated by \'.\'"

    .line 132
    .line 133
    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_4
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 141
    .line 142
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 143
    .line 144
    throw v2
.end method

.method public final group_body()V
    .locals 10

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 17
    .line 18
    .line 19
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 25
    .line 26
    .line 27
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    const/16 v5, 0x20

    .line 32
    .line 33
    const/16 v6, 0xf

    .line 34
    .line 35
    const/4 v7, 0x6

    .line 36
    iget-object v8, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 37
    .line 38
    if-eq v3, v7, :cond_1

    .line 39
    .line 40
    if-eq v3, v6, :cond_1

    .line 41
    .line 42
    if-eq v3, v5, :cond_1

    .line 43
    .line 44
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 45
    .line 46
    const/4 v9, 0x7

    .line 47
    aput v3, v8, v9

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->mailbox()V

    .line 51
    .line 52
    .line 53
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 54
    .line 55
    if-ne v3, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :cond_2
    const/4 v9, 0x3

    .line 62
    if-eq v3, v9, :cond_3

    .line 63
    .line 64
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    aput v3, v8, v4

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 77
    .line 78
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    :try_start_2
    invoke-virtual {p0, v9}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    .line 83
    .line 84
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 85
    .line 86
    if-ne v3, v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :cond_4
    if-eq v3, v7, :cond_5

    .line 93
    .line 94
    if-eq v3, v6, :cond_5

    .line 95
    .line 96
    if-eq v3, v5, :cond_5

    .line 97
    .line 98
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 99
    .line 100
    const/16 v9, 0x9

    .line 101
    .line 102
    aput v3, v8, v9

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->mailbox()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    :try_start_4
    instance-of v4, v1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    if-nez v4, :cond_7

    .line 116
    .line 117
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 118
    .line 119
    if-eqz v4, :cond_6

    .line 120
    .line 121
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 122
    .line 123
    throw v1

    .line 124
    :catchall_1
    move-exception v1

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .line 127
    .line 128
    throw v1

    .line 129
    :cond_7
    check-cast v1, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    :catchall_2
    move-exception v1

    .line 133
    const/4 v3, 0x1

    .line 134
    :goto_3
    if-eqz v3, :cond_8

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 140
    .line 141
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 142
    .line 143
    :cond_8
    throw v1
.end method

.method public final jj_3R_8()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return v3

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 24
    .line 25
    const/16 v2, 0x9

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 34
    .line 35
    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 52
    .line 53
    const/16 v0, 0x8

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    return v3

    .line 62
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 71
    .line 72
    const/16 v0, 0x13

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 98
    .line 99
    :cond_5
    const/4 p0, 0x0

    .line 100
    return p0
.end method

.method public final jj_add_error_token(II)V
    .locals 8

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 7
    .line 8
    add-int/lit8 v1, v0, 0x1

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    .line 11
    .line 12
    if-ne p2, v1, :cond_1

    .line 13
    .line 14
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 15
    .line 16
    aput p1, v2, v0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz v0, :cond_7

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 28
    .line 29
    if-ge v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 32
    .line 33
    aget v4, v2, v1

    .line 34
    .line 35
    aput v4, v3, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_6

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, [I

    .line 57
    .line 58
    array-length v5, v4

    .line 59
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 60
    .line 61
    array-length v6, v6

    .line 62
    if-ne v5, v6, :cond_3

    .line 63
    .line 64
    move v5, v0

    .line 65
    :goto_2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 66
    .line 67
    array-length v7, v6

    .line 68
    if-ge v5, v7, :cond_5

    .line 69
    .line 70
    aget v7, v4, v5

    .line 71
    .line 72
    aget v6, v6, v5

    .line 73
    .line 74
    if-eq v7, v6, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_6
    if-eqz p2, :cond_7

    .line 84
    .line 85
    iput p2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 86
    .line 87
    add-int/lit8 p2, p2, -0x1

    .line 88
    .line 89
    aput p1, v2, p2

    .line 90
    .line 91
    :cond_7
    :goto_3
    return-void
.end method

.method public final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 19
    .line 20
    :goto_0
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 24
    .line 25
    iget v2, v2, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 26
    .line 27
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    if-ne v2, p1, :cond_4

    .line 32
    .line 33
    iget p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 34
    .line 35
    add-int/2addr p1, v5

    .line 36
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 37
    .line 38
    iget p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 39
    .line 40
    add-int/2addr p1, v5

    .line 41
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 42
    .line 43
    const/16 v0, 0x64

    .line 44
    .line 45
    if-le p1, v0, :cond_3

    .line 46
    .line 47
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 48
    .line 49
    :goto_1
    array-length p1, v3

    .line 50
    if-ge v4, p1, :cond_3

    .line 51
    .line 52
    aget-object p1, v3, v4

    .line 53
    .line 54
    :goto_2
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 57
    .line 58
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 59
    .line 60
    if-ge v0, v1, :cond_1

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 64
    .line 65
    :cond_1
    iget-object p1, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_4
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 77
    .line 78
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 79
    .line 80
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    const/16 v0, 0x23

    .line 86
    .line 87
    new-array v2, v0, [Z

    .line 88
    .line 89
    iget v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 90
    .line 91
    if-ltz v6, :cond_5

    .line 92
    .line 93
    aput-boolean v5, v2, v6

    .line 94
    .line 95
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 96
    .line 97
    :cond_5
    move v1, v4

    .line 98
    :goto_3
    const/16 v6, 0x16

    .line 99
    .line 100
    if-ge v1, v6, :cond_9

    .line 101
    .line 102
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 103
    .line 104
    aget v6, v6, v1

    .line 105
    .line 106
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 107
    .line 108
    if-ne v6, v7, :cond_8

    .line 109
    .line 110
    move v6, v4

    .line 111
    :goto_4
    const/16 v7, 0x20

    .line 112
    .line 113
    if-ge v6, v7, :cond_8

    .line 114
    .line 115
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_0:[I

    .line 116
    .line 117
    aget v7, v7, v1

    .line 118
    .line 119
    shl-int v8, v5, v6

    .line 120
    .line 121
    and-int/2addr v7, v8

    .line 122
    if-eqz v7, :cond_6

    .line 123
    .line 124
    aput-boolean v5, v2, v6

    .line 125
    .line 126
    :cond_6
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_1:[I

    .line 127
    .line 128
    aget v7, v7, v1

    .line 129
    .line 130
    and-int/2addr v7, v8

    .line 131
    if-eqz v7, :cond_7

    .line 132
    .line 133
    add-int/lit8 v7, v6, 0x20

    .line 134
    .line 135
    aput-boolean v5, v2, v7

    .line 136
    .line 137
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    move v1, v4

    .line 144
    :goto_5
    if-ge v1, v0, :cond_b

    .line 145
    .line 146
    aget-boolean v6, v2, v1

    .line 147
    .line 148
    if-eqz v6, :cond_a

    .line 149
    .line 150
    new-array v6, v5, [I

    .line 151
    .line 152
    iput-object v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 153
    .line 154
    aput v1, v6, v4

    .line 155
    .line 156
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_b
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 163
    .line 164
    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 165
    .line 166
    move v0, v4

    .line 167
    :goto_6
    const/4 v1, 0x2

    .line 168
    if-ge v0, v1, :cond_10

    .line 169
    .line 170
    :try_start_0
    aget-object v1, v3, v0

    .line 171
    .line 172
    :cond_c
    iget v2, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 173
    .line 174
    iget v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 175
    .line 176
    if-le v2, v6, :cond_f

    .line 177
    .line 178
    iget v2, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 179
    .line 180
    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 181
    .line 182
    iget-object v2, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v2, Lorg/apache/james/mime4j/field/address/Token;

    .line 185
    .line 186
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 187
    .line 188
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 189
    .line 190
    if-eqz v0, :cond_e

    .line 191
    .line 192
    if-eq v0, v5, :cond_d

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    .line 196
    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_e
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    .line 200
    .line 201
    .line 202
    :cond_f
    :goto_7
    iget-object v1, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v1, Lcom/fsck/k9/message/html/EmailSection$Builder;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    if-nez v1, :cond_c

    .line 207
    .line 208
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_10
    iput-boolean v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 212
    .line 213
    invoke-virtual {p0, v4, v4}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_add_error_token(II)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    new-array v0, v0, [[I

    .line 221
    .line 222
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-ge v4, v1, :cond_11

    .line 227
    .line 228
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, [I

    .line 233
    .line 234
    aput-object v1, v0, v4

    .line 235
    .line 236
    add-int/lit8 v4, v4, 0x1

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_11
    new-instance p1, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 240
    .line 241
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 242
    .line 243
    const-string v1, ""

    .line 244
    .line 245
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v1, "line.separator"

    .line 249
    .line 250
    const-string v2, "\n"

    .line 251
    .line 252
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iput-object v1, p1, Lorg/apache/james/mime4j/field/address/ParseException;->eol:Ljava/lang/String;

    .line 257
    .line 258
    iput-boolean v5, p1, Lorg/apache/james/mime4j/field/address/ParseException;->specialConstructor:Z

    .line 259
    .line 260
    iput-object p0, p1, Lorg/apache/james/mime4j/field/address/ParseException;->currentToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 261
    .line 262
    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/ParseException;->expectedTokenSequences:[[I

    .line 263
    .line 264
    sget-object p0, Lorg/apache/james/mime4j/field/address/AddressListParserConstants;->tokenImage:[Ljava/lang/String;

    .line 265
    .line 266
    iput-object p0, p1, Lorg/apache/james/mime4j/field/address/ParseException;->tokenImage:[Ljava/lang/String;

    .line 267
    .line 268
    throw p1
.end method

.method public final jj_ntk()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 14
    .line 15
    iget v0, v1, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    iget v0, v1, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 21
    .line 22
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 23
    .line 24
    return v0
.end method

.method public final jj_save(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    :goto_0
    iget v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-direct {v0, v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 24
    .line 25
    move-object p1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move-object p1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    const v0, 0x7fffffff

    .line 30
    .line 31
    .line 32
    add-int/2addr v1, v0

    .line 33
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 34
    .line 35
    sub-int/2addr v1, v2

    .line 36
    iput v1, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 37
    .line 38
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 39
    .line 40
    iput-object p0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 41
    .line 42
    iput v0, p1, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 43
    .line 44
    return-void
.end method

.method public final jj_scan_token(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 12
    .line 13
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 31
    .line 32
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 38
    .line 39
    :goto_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 45
    .line 46
    move v3, v1

    .line 47
    :goto_1
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 50
    .line 51
    if-eq v0, v4, :cond_2

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, p1, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_add_error_token(II)V

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 64
    .line 65
    iget v3, v0, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 66
    .line 67
    if-eq v3, p1, :cond_4

    .line 68
    .line 69
    return v2

    .line 70
    :cond_4
    iget p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 71
    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 75
    .line 76
    if-eq v0, p1, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 80
    .line 81
    throw p0

    .line 82
    :cond_6
    :goto_2
    return v1
.end method

.method public final jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 15
    .line 16
    :goto_0
    iput-object v1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 17
    .line 18
    return-void
.end method

.method public final local_part()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTlocal_part;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 30
    .line 31
    const/16 v5, 0x20

    .line 32
    .line 33
    const/16 v6, 0xf

    .line 34
    .line 35
    if-eq v2, v6, :cond_2

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 45
    .line 46
    aput v2, v4, v6

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v2

    .line 57
    :cond_2
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_1
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 62
    .line 63
    if-ne v7, v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    :cond_3
    const/16 v8, 0x9

    .line 70
    .line 71
    if-eq v7, v8, :cond_4

    .line 72
    .line 73
    if-eq v7, v6, :cond_4

    .line 74
    .line 75
    if-eq v7, v5, :cond_4

    .line 76
    .line 77
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 78
    .line 79
    const/16 v3, 0x10

    .line 80
    .line 81
    aput v2, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 87
    .line 88
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    :try_start_2
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 92
    .line 93
    if-ne v7, v3, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    :cond_5
    if-eq v7, v8, :cond_6

    .line 100
    .line 101
    iget v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 102
    .line 103
    const/16 v8, 0x11

    .line 104
    .line 105
    aput v7, v4, v8

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    invoke-virtual {p0, v8}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_2
    iget v7, v2, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 113
    .line 114
    if-eq v7, v5, :cond_a

    .line 115
    .line 116
    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    add-int/lit8 v7, v7, -0x1

    .line 123
    .line 124
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    const/16 v7, 0x2e

    .line 129
    .line 130
    if-ne v2, v7, :cond_a

    .line 131
    .line 132
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 133
    .line 134
    if-ne v2, v3, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    :cond_7
    if-eq v2, v6, :cond_9

    .line 141
    .line 142
    if-ne v2, v5, :cond_8

    .line 143
    .line 144
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 150
    .line 151
    const/16 v5, 0x12

    .line 152
    .line 153
    aput v2, v4, v5

    .line 154
    .line 155
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 156
    .line 157
    .line 158
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 159
    .line 160
    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw v2

    .line 164
    :cond_9
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    goto :goto_1

    .line 169
    :cond_a
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 170
    .line 171
    const-string v3, "Words in local part must be separated by \'.\'"

    .line 172
    .line 173
    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :goto_3
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 181
    .line 182
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 183
    .line 184
    throw v2
.end method

.method public final mailbox()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const v3, 0x7fffffff

    .line 17
    .line 18
    .line 19
    :try_start_0
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 20
    .line 21
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 22
    .line 23
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 24
    .line 25
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    .line 28
    .line 29
    .line 30
    move-result v3
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    xor-int/2addr v3, v2

    .line 32
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v3

    .line 37
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 38
    .line 39
    .line 40
    throw v3

    .line 41
    :catch_0
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(I)V

    .line 42
    .line 43
    .line 44
    move v3, v2

    .line 45
    :goto_0
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_1
    move-exception v3

    .line 52
    goto :goto_3

    .line 53
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    if-ne v3, v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :cond_1
    const/4 v5, 0x6

    .line 63
    if-eq v3, v5, :cond_4

    .line 64
    .line 65
    const/16 v6, 0xf

    .line 66
    .line 67
    if-eq v3, v6, :cond_3

    .line 68
    .line 69
    const/16 v6, 0x20

    .line 70
    .line 71
    if-ne v3, v6, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 75
    .line 76
    iget v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 77
    .line 78
    aput v6, v3, v5

    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 81
    .line 82
    .line 83
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 84
    .line 85
    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 86
    .line 87
    .line 88
    throw v3

    .line 89
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->name_addr()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 100
    .line 101
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 102
    .line 103
    return-void

    .line 104
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    instance-of v4, v3, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    if-nez v4, :cond_6

    .line 111
    .line 112
    instance-of v4, v3, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 113
    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    check-cast v3, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 117
    .line 118
    throw v3

    .line 119
    :catchall_2
    move-exception v3

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    check-cast v3, Ljava/lang/Error;

    .line 122
    .line 123
    throw v3

    .line 124
    :cond_6
    check-cast v3, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 127
    :goto_4
    if-eqz v2, :cond_7

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 133
    .line 134
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 135
    .line 136
    :cond_7
    throw v3
.end method

.method public final name_addr()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->phrase()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 25
    .line 26
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    :try_start_1
    invoke-virtual {v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    check-cast v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 43
    .line 44
    throw v2

    .line 45
    :catchall_1
    move-exception v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    check-cast v2, Ljava/lang/Error;

    .line 48
    .line 49
    throw v2

    .line 50
    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    .line 51
    .line 52
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :catchall_2
    move-exception v2

    .line 54
    const/4 v3, 0x1

    .line 55
    :goto_0
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 61
    .line 62
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 63
    .line 64
    :cond_2
    throw v2
.end method

.method public final parseAddressList0()V
    .locals 12

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTaddress_list;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :try_start_0
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 17
    .line 18
    const/4 v5, -0x1

    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 22
    .line 23
    .line 24
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v4

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    const/16 v6, 0x20

    .line 29
    .line 30
    const/16 v7, 0xf

    .line 31
    .line 32
    const/4 v8, 0x6

    .line 33
    iget-object v9, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 34
    .line 35
    if-eq v4, v8, :cond_1

    .line 36
    .line 37
    if-eq v4, v7, :cond_1

    .line 38
    .line 39
    if-eq v4, v6, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 42
    .line 43
    aput v4, v9, v1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address()V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 50
    .line 51
    if-ne v4, v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    :cond_2
    const/4 v10, 0x3

    .line 58
    if-eq v4, v10, :cond_3

    .line 59
    .line 60
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    aput v4, v9, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 69
    .line 70
    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    :try_start_2
    invoke-virtual {p0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 77
    .line 78
    .line 79
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 80
    .line 81
    if-ne v4, v5, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    :cond_4
    if-eq v4, v8, :cond_5

    .line 88
    .line 89
    if-eq v4, v7, :cond_5

    .line 90
    .line 91
    if-eq v4, v6, :cond_5

    .line 92
    .line 93
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 94
    .line 95
    aput v4, v9, v10

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    .line 104
    .line 105
    :try_start_4
    instance-of v1, v4, Ljava/lang/RuntimeException;

    .line 106
    .line 107
    if-nez v1, :cond_7

    .line 108
    .line 109
    instance-of v1, v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    check-cast v4, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 114
    .line 115
    throw v4

    .line 116
    :catchall_1
    move-exception v1

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    check-cast v4, Ljava/lang/Error;

    .line 119
    .line 120
    throw v4

    .line 121
    :cond_7
    check-cast v4, Ljava/lang/RuntimeException;

    .line 122
    .line 123
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    :catchall_2
    move-exception v3

    .line 125
    move-object v11, v3

    .line 126
    move v3, v1

    .line 127
    move-object v1, v11

    .line 128
    :goto_3
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 134
    .line 135
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 136
    .line 137
    :cond_8
    throw v1
.end method

.method public final phrase()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 29
    .line 30
    const/16 v5, 0x20

    .line 31
    .line 32
    const/16 v6, 0xf

    .line 33
    .line 34
    if-eq v2, v6, :cond_3

    .line 35
    .line 36
    if-ne v2, v5, :cond_2

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 43
    .line 44
    const/16 v5, 0xd

    .line 45
    .line 46
    aput v2, v4, v5

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 52
    .line 53
    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v2

    .line 57
    :cond_3
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 58
    .line 59
    .line 60
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 61
    .line 62
    if-ne v2, v3, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_4
    if-eq v2, v6, :cond_0

    .line 69
    .line 70
    if-eq v2, v5, :cond_0

    .line 71
    .line 72
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 73
    .line 74
    const/16 v3, 0xe

    .line 75
    .line 76
    aput v2, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    .line 83
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 84
    .line 85
    return-void

    .line 86
    :goto_2
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 90
    .line 91
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 92
    .line 93
    throw v2
.end method

.method public final route()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/address/ASTroute;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v2

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 36
    .line 37
    const/4 v6, 0x3

    .line 38
    if-eq v3, v6, :cond_1

    .line 39
    .line 40
    if-eq v3, v2, :cond_1

    .line 41
    .line 42
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 43
    .line 44
    const/16 v3, 0xb

    .line 45
    .line 46
    aput v2, v5, v3

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 56
    .line 57
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    :goto_2
    :try_start_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 61
    .line 62
    if-ne v3, v4, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :cond_2
    if-eq v3, v6, :cond_3

    .line 69
    .line 70
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 71
    .line 72
    const/16 v4, 0xc

    .line 73
    .line 74
    aput v3, v5, v4

    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->clearNodeScope()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    :try_start_4
    instance-of v4, v2, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    if-nez v4, :cond_5

    .line 94
    .line 95
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    check-cast v2, Lorg/apache/james/mime4j/field/address/ParseException;

    .line 100
    .line 101
    throw v2

    .line 102
    :catchall_1
    move-exception v2

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    check-cast v2, Ljava/lang/Error;

    .line 105
    .line 106
    throw v2

    .line 107
    :cond_5
    check-cast v2, Ljava/lang/RuntimeException;

    .line 108
    .line 109
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    :catchall_2
    move-exception v2

    .line 111
    const/4 v3, 0x1

    .line 112
    :goto_4
    if-eqz v3, :cond_6

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 118
    .line 119
    iput-object p0, v0, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 120
    .line 121
    :cond_6
    throw v2
.end method
