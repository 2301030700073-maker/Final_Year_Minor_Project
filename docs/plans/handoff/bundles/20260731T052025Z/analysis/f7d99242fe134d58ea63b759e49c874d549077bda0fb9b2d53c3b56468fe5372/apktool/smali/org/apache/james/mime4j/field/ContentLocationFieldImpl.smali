.class public final Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;
.super Lorg/minidns/dnsqueryresult/DnsQueryResult;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\\s"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;

    .line 7
    .line 8
    const/4 v1, 0x7

    .line 9
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/apache/james/mime4j/field/ContentLocationFieldImpl;->PARSER:Lorg/apache/james/mime4j/field/MailboxFieldImpl$1;

    .line 13
    .line 14
    return-void
.end method
