.class public final Lorg/apache/james/mime4j/field/DateTimeFieldImpl;
.super Lorg/minidns/dnsqueryresult/DnsQueryResult;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;


# instance fields
.field public date:Ljava/util/Date;

.field public parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->PARSER:Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getDate()Ljava/util/Date;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lorg/apache/james/mime4j/stream/Field;

    .line 8
    .line 9
    invoke-interface {v0}, Lorg/apache/james/mime4j/stream/Field;->getBody()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    .line 14
    .line 15
    new-instance v2, Ljava/io/StringReader;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/StringReader;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->doParseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    .line 27
    :try_start_2
    iget-object v0, v0, Lorg/apache/james/mime4j/dom/datetime/DateTime;->date:Ljava/util/Date;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception v0

    .line 35
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;)V

    .line 38
    .line 39
    .line 40
    throw v1
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :goto_0
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;)V

    .line 44
    .line 45
    .line 46
    :catch_2
    :goto_1
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->parsed:Z

    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/field/DateTimeFieldImpl;->date:Ljava/util/Date;

    .line 50
    .line 51
    return-object p0
.end method
