package org.apache.james.mime4j.field.address;

import com.fsck.k9.message.html.EmailSection;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.io.TextInputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AddressListParser implements AddressListParserTreeConstants, AddressListParserConstants {
    public static final int[] jj_la1_0 = {2, 32832, 8, 32832, 80, 32832, 32832, 32832, 8, 32832, 256, 264, 8, 32768, 32768, 32768, 33280, 512, 32768, 33280, 512, 557056};
    public static final int[] jj_la1_1 = {0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0};
    public final EmailSection.Builder[] jj_2_rtns;
    public int jj_endpos;
    public final ArrayList jj_expentries;
    public int[] jj_expentry;
    public int jj_gc;
    public int jj_gen;
    public int jj_kind;
    public int jj_la;
    public final int[] jj_la1;
    public Token jj_lastpos;
    public final int[] jj_lasttokens;
    public final LookaheadSuccess jj_ls;
    public int jj_ntk;
    public boolean jj_rescan;
    public Token jj_scanpos;
    public final EmailSection.Builder jjtree;
    public Token token;
    public final AddressListParserTokenManager token_source;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LookaheadSuccess extends Error {
    }

    public AddressListParser(TextInputStream textInputStream) {
        EmailSection.Builder builder = new EmailSection.Builder(5);
        builder.segments = new ArrayList();
        builder.text = new ArrayList();
        int i = 0;
        builder.quoteDepth = 0;
        builder.indent = 0;
        this.jjtree = builder;
        this.jj_la1 = new int[22];
        this.jj_2_rtns = new EmailSection.Builder[2];
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        try {
            this.token_source = new AddressListParserTokenManager(new SimpleCharStream(textInputStream));
            this.token = new Token();
            this.jj_ntk = -1;
            this.jj_gen = 0;
            for (int i2 = 0; i2 < 22; i2++) {
                this.jj_la1[i2] = -1;
            }
            while (true) {
                EmailSection.Builder[] builderArr = this.jj_2_rtns;
                if (i >= builderArr.length) {
                    return;
                }
                builderArr[i] = new EmailSection.Builder(4);
                i++;
            }
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            throw null;
        }
    }

    public final void addr_spec() {
        boolean z;
        ASTaddr_spec aSTaddr_spec = new ASTaddr_spec(9);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTaddr_spec);
        jjtreeOpenNodeScope(aSTaddr_spec);
        try {
            local_part();
            jj_consume_token(8);
            domain();
            builder.closeNodeScope(aSTaddr_spec);
            aSTaddr_spec.lastToken = this.token;
        } catch (Throwable th) {
            try {
                builder.clearNodeScope();
                z = false;
                try {
                    if (th instanceof RuntimeException) {
                        throw ((RuntimeException) th);
                    }
                    if (!(th instanceof ParseException)) {
                        throw ((Error) th);
                    }
                    throw ((ParseException) th);
                } catch (Throwable th2) {
                    th = th2;
                    if (z) {
                        builder.closeNodeScope(aSTaddr_spec);
                        aSTaddr_spec.lastToken = this.token;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                z = true;
            }
        }
    }

    public final void address() {
        Throwable th;
        boolean z;
        ASTaddress aSTaddress = new ASTaddress(2);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTaddress);
        jjtreeOpenNodeScope(aSTaddress);
        boolean z2 = false;
        try {
            this.jj_la = Integer.MAX_VALUE;
            Token token = this.token;
            this.jj_scanpos = token;
            this.jj_lastpos = token;
            try {
                try {
                    z = !jj_3R_8();
                    jj_save(0);
                } catch (Throwable th2) {
                    jj_save(0);
                    throw th2;
                }
            } catch (LookaheadSuccess unused) {
                jj_save(0);
                z = true;
            }
            if (z) {
                addr_spec();
            } else {
                int i = this.jj_ntk;
                if (i == -1) {
                    i = jj_ntk();
                }
                if (i != 6) {
                    int[] iArr = this.jj_la1;
                    if (i != 15 && i != 32) {
                        iArr[5] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    phrase();
                    int i2 = this.jj_ntk;
                    if (i2 == -1) {
                        i2 = jj_ntk();
                    }
                    if (i2 == 4) {
                        group_body();
                    } else {
                        if (i2 != 6) {
                            iArr[4] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                        }
                        angle_addr();
                    }
                } else {
                    angle_addr();
                }
            }
            builder.closeNodeScope(aSTaddress);
            aSTaddress.lastToken = this.token;
        } catch (Throwable th3) {
            try {
                builder.clearNodeScope();
            } catch (Throwable th4) {
                th = th4;
                z2 = true;
            }
            try {
                if (th3 instanceof RuntimeException) {
                    throw ((RuntimeException) th3);
                }
                if (!(th3 instanceof ParseException)) {
                    throw ((Error) th3);
                }
                throw ((ParseException) th3);
            } catch (Throwable th5) {
                th = th5;
                if (!z2) {
                    throw th;
                }
                builder.closeNodeScope(aSTaddress);
                aSTaddress.lastToken = this.token;
                throw th;
            }
        }
    }

    public final void angle_addr() {
        boolean z;
        ASTangle_addr aSTangle_addr = new ASTangle_addr(6);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTangle_addr);
        jjtreeOpenNodeScope(aSTangle_addr);
        try {
            jj_consume_token(6);
            int i = this.jj_ntk;
            if (i == -1) {
                i = jj_ntk();
            }
            if (i != 8) {
                this.jj_la1[10] = this.jj_gen;
            } else {
                route();
            }
            addr_spec();
            jj_consume_token(7);
            builder.closeNodeScope(aSTangle_addr);
            aSTangle_addr.lastToken = this.token;
        } catch (Throwable th) {
            try {
                builder.clearNodeScope();
                z = false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
            }
            try {
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                if (!(th instanceof ParseException)) {
                    throw ((Error) th);
                }
                throw ((ParseException) th);
            } catch (Throwable th3) {
                th = th3;
                if (z) {
                    builder.closeNodeScope(aSTangle_addr);
                    aSTangle_addr.lastToken = this.token;
                }
                throw th;
            }
        }
    }

    public final void domain() {
        ASTdomain aSTdomain = new ASTdomain(11);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTdomain);
        jjtreeOpenNodeScope(aSTdomain);
        try {
            int i = this.jj_ntk;
            if (i == -1) {
                i = jj_ntk();
            }
            int[] iArr = this.jj_la1;
            if (i == 15) {
                Token jj_consume_token = jj_consume_token(15);
                while (true) {
                    int i2 = this.jj_ntk;
                    if (i2 == -1) {
                        i2 = jj_ntk();
                    }
                    if (i2 != 9 && i2 != 15) {
                        iArr[19] = this.jj_gen;
                        break;
                    }
                    int i3 = this.jj_ntk;
                    if (i3 == -1) {
                        i3 = jj_ntk();
                    }
                    if (i3 != 9) {
                        iArr[20] = this.jj_gen;
                    } else {
                        jj_consume_token = jj_consume_token(9);
                    }
                    if (jj_consume_token.image.charAt(r2.length() - 1) != '.') {
                        throw new ParseException("Atoms in domain names must be separated by '.'");
                    }
                    jj_consume_token = jj_consume_token(15);
                }
            } else {
                if (i != 19) {
                    iArr[21] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(19);
            }
        } finally {
            builder.closeNodeScope(aSTdomain);
            aSTdomain.lastToken = this.token;
        }
    }

    public final void group_body() {
        boolean z;
        ASTgroup_body aSTgroup_body = new ASTgroup_body(5);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTgroup_body);
        jjtreeOpenNodeScope(aSTgroup_body);
        try {
            jj_consume_token(4);
            int i = this.jj_ntk;
            if (i == -1) {
                i = jj_ntk();
            }
            int[] iArr = this.jj_la1;
            if (i == 6 || i == 15 || i == 32) {
                mailbox();
            } else {
                iArr[7] = this.jj_gen;
            }
            while (true) {
                int i2 = this.jj_ntk;
                if (i2 == -1) {
                    i2 = jj_ntk();
                }
                if (i2 != 3) {
                    iArr[8] = this.jj_gen;
                    jj_consume_token(5);
                    builder.closeNodeScope(aSTgroup_body);
                    aSTgroup_body.lastToken = this.token;
                    return;
                }
                jj_consume_token(3);
                int i3 = this.jj_ntk;
                if (i3 == -1) {
                    i3 = jj_ntk();
                }
                if (i3 == 6 || i3 == 15 || i3 == 32) {
                    mailbox();
                } else {
                    iArr[9] = this.jj_gen;
                }
            }
        } catch (Throwable th) {
            try {
                builder.clearNodeScope();
                z = false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
            }
            try {
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                if (!(th instanceof ParseException)) {
                    throw ((Error) th);
                }
                throw ((ParseException) th);
            } catch (Throwable th3) {
                th = th3;
                if (z) {
                    builder.closeNodeScope(aSTgroup_body);
                    aSTgroup_body.lastToken = this.token;
                }
                throw th;
            }
        }
    }

    public final boolean jj_3R_8() {
        Token token;
        Token token2;
        Token token3 = this.jj_scanpos;
        if (jj_scan_token(15)) {
            this.jj_scanpos = token3;
            if (jj_scan_token(32)) {
                return true;
            }
        }
        while (true) {
            token = this.jj_scanpos;
            if (jj_scan_token(9)) {
                this.jj_scanpos = token;
            }
            Token token4 = this.jj_scanpos;
            if (jj_scan_token(15)) {
                this.jj_scanpos = token4;
                if (jj_scan_token(32)) {
                    break;
                }
            }
        }
        this.jj_scanpos = token;
        if (jj_scan_token(8)) {
            return true;
        }
        Token token5 = this.jj_scanpos;
        if (jj_scan_token(15)) {
            this.jj_scanpos = token5;
            return jj_scan_token(19);
        }
        do {
            token2 = this.jj_scanpos;
            if (jj_scan_token(9)) {
                this.jj_scanpos = token2;
            }
        } while (!jj_scan_token(15));
        this.jj_scanpos = token2;
        return false;
    }

    public final void jj_add_error_token(int i, int i2) {
        if (i2 >= 100) {
            return;
        }
        int i3 = this.jj_endpos;
        int i4 = i3 + 1;
        int[] iArr = this.jj_lasttokens;
        if (i2 == i4) {
            this.jj_endpos = i4;
            iArr[i3] = i;
            return;
        }
        if (i3 != 0) {
            this.jj_expentry = new int[i3];
            for (int i5 = 0; i5 < this.jj_endpos; i5++) {
                this.jj_expentry[i5] = iArr[i5];
            }
            ArrayList arrayList = this.jj_expentries;
            Iterator it = arrayList.iterator();
            loop1: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] iArr2 = (int[]) it.next();
                if (iArr2.length == this.jj_expentry.length) {
                    int i6 = 0;
                    while (true) {
                        int[] iArr3 = this.jj_expentry;
                        if (i6 >= iArr3.length) {
                            arrayList.add(iArr3);
                            break loop1;
                        } else if (iArr2[i6] != iArr3[i6]) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                }
            }
            if (i2 != 0) {
                this.jj_endpos = i2;
                iArr[i2 - 1] = i;
            }
        }
    }

    public final Token jj_consume_token(int i) {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        int i2 = this.token.kind;
        EmailSection.Builder[] builderArr = this.jj_2_rtns;
        int i3 = 0;
        if (i2 == i) {
            this.jj_gen++;
            int i4 = this.jj_gc + 1;
            this.jj_gc = i4;
            if (i4 > 100) {
                this.jj_gc = 0;
                while (i3 < builderArr.length) {
                    for (EmailSection.Builder builder = builderArr[i3]; builder != null; builder = (EmailSection.Builder) builder.segments) {
                        if (builder.quoteDepth < this.jj_gen) {
                            builder.text = null;
                        }
                    }
                    i3++;
                }
            }
            return this.token;
        }
        this.token = token;
        this.jj_kind = i;
        ArrayList arrayList = this.jj_expentries;
        arrayList.clear();
        boolean[] zArr = new boolean[35];
        int i5 = this.jj_kind;
        if (i5 >= 0) {
            zArr[i5] = true;
            this.jj_kind = -1;
        }
        for (int i6 = 0; i6 < 22; i6++) {
            if (this.jj_la1[i6] == this.jj_gen) {
                for (int i7 = 0; i7 < 32; i7++) {
                    int i8 = 1 << i7;
                    if ((jj_la1_0[i6] & i8) != 0) {
                        zArr[i7] = true;
                    }
                    if ((jj_la1_1[i6] & i8) != 0) {
                        zArr[i7 + 32] = true;
                    }
                }
            }
        }
        for (int i9 = 0; i9 < 35; i9++) {
            if (zArr[i9]) {
                int[] iArr = {i9};
                this.jj_expentry = iArr;
                arrayList.add(iArr);
            }
        }
        this.jj_endpos = 0;
        this.jj_rescan = true;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                EmailSection.Builder builder2 = builderArr[i10];
                do {
                    if (builder2.quoteDepth > this.jj_gen) {
                        this.jj_la = builder2.indent;
                        Token token3 = (Token) builder2.text;
                        this.jj_scanpos = token3;
                        this.jj_lastpos = token3;
                        if (i10 == 0) {
                            jj_3R_8();
                        } else if (i10 == 1) {
                            jj_3R_8();
                        }
                    }
                    builder2 = (EmailSection.Builder) builder2.segments;
                } while (builder2 != null);
            } catch (LookaheadSuccess unused) {
            }
        }
        this.jj_rescan = false;
        jj_add_error_token(0, 0);
        int[][] iArr2 = new int[arrayList.size()][];
        while (i3 < arrayList.size()) {
            iArr2[i3] = (int[]) arrayList.get(i3);
            i3++;
        }
        Token token4 = this.token;
        ParseException parseException = new ParseException("");
        parseException.eol = System.getProperty("line.separator", "\n");
        parseException.specialConstructor = true;
        parseException.currentToken = token4;
        parseException.expectedTokenSequences = iArr2;
        parseException.tokenImage = AddressListParserConstants.tokenImage;
        throw parseException;
    }

    public final int jj_ntk() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            int i = token2.kind;
            this.jj_ntk = i;
            return i;
        }
        Token nextToken = this.token_source.getNextToken();
        token.next = nextToken;
        int i2 = nextToken.kind;
        this.jj_ntk = i2;
        return i2;
    }

    public final void jj_save(int i) {
        int i2;
        EmailSection.Builder builder = this.jj_2_rtns[i];
        while (true) {
            int i3 = builder.quoteDepth;
            i2 = this.jj_gen;
            if (i3 <= i2) {
                break;
            }
            EmailSection.Builder builder2 = (EmailSection.Builder) builder.segments;
            if (builder2 == null) {
                EmailSection.Builder builder3 = new EmailSection.Builder(4);
                builder.segments = builder3;
                builder = builder3;
                break;
            }
            builder = builder2;
        }
        builder.quoteDepth = (i2 + Integer.MAX_VALUE) - this.jj_la;
        builder.text = this.token;
        builder.indent = Integer.MAX_VALUE;
    }

    public final boolean jj_scan_token(int i) {
        Token token = this.jj_scanpos;
        if (token == this.jj_lastpos) {
            this.jj_la--;
            Token token2 = token.next;
            if (token2 == null) {
                Token nextToken = this.token_source.getNextToken();
                token.next = nextToken;
                this.jj_scanpos = nextToken;
                this.jj_lastpos = nextToken;
            } else {
                this.jj_scanpos = token2;
                this.jj_lastpos = token2;
            }
        } else {
            this.jj_scanpos = token.next;
        }
        if (this.jj_rescan) {
            Token token3 = this.token;
            int i2 = 0;
            while (token3 != null && token3 != this.jj_scanpos) {
                i2++;
                token3 = token3.next;
            }
            if (token3 != null) {
                jj_add_error_token(i, i2);
            }
        }
        Token token4 = this.jj_scanpos;
        if (token4.kind != i) {
            return true;
        }
        if (this.jj_la == 0 && token4 == this.jj_lastpos) {
            throw this.jj_ls;
        }
        return false;
    }

    public final void jjtreeOpenNodeScope(SimpleNode simpleNode) {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 == null) {
            token2 = this.token_source.getNextToken();
            token.next = token2;
        }
        simpleNode.firstToken = token2;
    }

    public final void local_part() {
        Token jj_consume_token;
        ASTlocal_part aSTlocal_part = new ASTlocal_part(10);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTlocal_part);
        jjtreeOpenNodeScope(aSTlocal_part);
        try {
            int i = this.jj_ntk;
            if (i == -1) {
                i = jj_ntk();
            }
            int[] iArr = this.jj_la1;
            if (i == 15) {
                jj_consume_token = jj_consume_token(15);
            } else {
                if (i != 32) {
                    iArr[15] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token = jj_consume_token(32);
            }
            while (true) {
                int i2 = this.jj_ntk;
                if (i2 == -1) {
                    i2 = jj_ntk();
                }
                if (i2 != 9 && i2 != 15 && i2 != 32) {
                    iArr[16] = this.jj_gen;
                    return;
                }
                int i3 = this.jj_ntk;
                if (i3 == -1) {
                    i3 = jj_ntk();
                }
                if (i3 != 9) {
                    iArr[17] = this.jj_gen;
                } else {
                    jj_consume_token = jj_consume_token(9);
                }
                if (jj_consume_token.kind == 32) {
                    break;
                }
                if (jj_consume_token.image.charAt(r2.length() - 1) != '.') {
                    break;
                }
                int i4 = this.jj_ntk;
                if (i4 == -1) {
                    i4 = jj_ntk();
                }
                if (i4 == 15) {
                    jj_consume_token = jj_consume_token(15);
                } else {
                    if (i4 != 32) {
                        iArr[18] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    jj_consume_token = jj_consume_token(32);
                }
            }
            throw new ParseException("Words in local part must be separated by '.'");
        } finally {
            builder.closeNodeScope(aSTlocal_part);
            aSTlocal_part.lastToken = this.token;
        }
    }

    public final void mailbox() {
        boolean z;
        ASTmailbox aSTmailbox = new ASTmailbox(3);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTmailbox);
        jjtreeOpenNodeScope(aSTmailbox);
        try {
            this.jj_la = Integer.MAX_VALUE;
            Token token = this.token;
            this.jj_scanpos = token;
            this.jj_lastpos = token;
            try {
                try {
                    z = !jj_3R_8();
                    jj_save(1);
                } catch (Throwable th) {
                    jj_save(1);
                    throw th;
                }
            } catch (LookaheadSuccess unused) {
                jj_save(1);
                z = true;
            }
            if (z) {
                addr_spec();
            } else {
                int i = this.jj_ntk;
                if (i == -1) {
                    i = jj_ntk();
                }
                if (i != 6) {
                    if (i != 15 && i != 32) {
                        this.jj_la1[6] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    name_addr();
                } else {
                    angle_addr();
                }
            }
            builder.closeNodeScope(aSTmailbox);
            aSTmailbox.lastToken = this.token;
        } catch (Throwable th2) {
            try {
                builder.clearNodeScope();
                if (th2 instanceof RuntimeException) {
                    throw ((RuntimeException) th2);
                }
                if (!(th2 instanceof ParseException)) {
                    throw ((Error) th2);
                }
                throw ((ParseException) th2);
            } catch (Throwable th3) {
                if (1 != 0) {
                    builder.closeNodeScope(aSTmailbox);
                    aSTmailbox.lastToken = this.token;
                }
                throw th3;
            }
        }
    }

    public final void name_addr() {
        boolean z;
        ASTname_addr aSTname_addr = new ASTname_addr(4);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTname_addr);
        jjtreeOpenNodeScope(aSTname_addr);
        try {
            phrase();
            angle_addr();
            builder.closeNodeScope(aSTname_addr);
            aSTname_addr.lastToken = this.token;
        } catch (Throwable th) {
            try {
                builder.clearNodeScope();
                z = false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
            }
            try {
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                if (!(th instanceof ParseException)) {
                    throw ((Error) th);
                }
                throw ((ParseException) th);
            } catch (Throwable th3) {
                th = th3;
                if (z) {
                    builder.closeNodeScope(aSTname_addr);
                    aSTname_addr.lastToken = this.token;
                }
                throw th;
            }
        }
    }

    public final void parseAddressList0() {
        Throwable th;
        ASTaddress_list aSTaddress_list = new ASTaddress_list(1);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTaddress_list);
        jjtreeOpenNodeScope(aSTaddress_list);
        boolean z = false;
        try {
            int i = this.jj_ntk;
            if (i == -1) {
                i = jj_ntk();
            }
            int[] iArr = this.jj_la1;
            if (i == 6 || i == 15 || i == 32) {
                address();
            } else {
                iArr[1] = this.jj_gen;
            }
            while (true) {
                int i2 = this.jj_ntk;
                if (i2 == -1) {
                    i2 = jj_ntk();
                }
                if (i2 != 3) {
                    iArr[2] = this.jj_gen;
                    builder.closeNodeScope(aSTaddress_list);
                    aSTaddress_list.lastToken = this.token;
                    jj_consume_token(0);
                    return;
                }
                jj_consume_token(3);
                int i3 = this.jj_ntk;
                if (i3 == -1) {
                    i3 = jj_ntk();
                }
                if (i3 == 6 || i3 == 15 || i3 == 32) {
                    address();
                } else {
                    iArr[3] = this.jj_gen;
                }
            }
        } catch (Throwable th2) {
            try {
                builder.clearNodeScope();
                try {
                    if (th2 instanceof RuntimeException) {
                        throw ((RuntimeException) th2);
                    }
                    if (!(th2 instanceof ParseException)) {
                        throw ((Error) th2);
                    }
                    throw ((ParseException) th2);
                } catch (Throwable th3) {
                    th = th3;
                    if (!z) {
                        throw th;
                    }
                    builder.closeNodeScope(aSTaddress_list);
                    aSTaddress_list.lastToken = this.token;
                    throw th;
                }
            } catch (Throwable th4) {
                z = true;
                th = th4;
            }
        }
    }

    public final void phrase() {
        ASTphrase aSTphrase = new ASTphrase(8);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTphrase);
        jjtreeOpenNodeScope(aSTphrase);
        while (true) {
            try {
                int i = this.jj_ntk;
                if (i == -1) {
                    i = jj_ntk();
                }
                int[] iArr = this.jj_la1;
                if (i == 15) {
                    jj_consume_token(15);
                } else {
                    if (i != 32) {
                        iArr[13] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    jj_consume_token(32);
                }
                int i2 = this.jj_ntk;
                if (i2 == -1) {
                    i2 = jj_ntk();
                }
                if (i2 != 15 && i2 != 32) {
                    iArr[14] = this.jj_gen;
                    return;
                }
            } finally {
                builder.closeNodeScope(aSTphrase);
                aSTphrase.lastToken = this.token;
            }
        }
    }

    public final void route() {
        boolean z;
        ASTroute aSTroute = new ASTroute(7);
        EmailSection.Builder builder = this.jjtree;
        builder.openNodeScope(aSTroute);
        jjtreeOpenNodeScope(aSTroute);
        try {
            jj_consume_token(8);
            domain();
            while (true) {
                int i = this.jj_ntk;
                if (i == -1) {
                    i = jj_ntk();
                }
                int[] iArr = this.jj_la1;
                if (i != 3 && i != 8) {
                    iArr[11] = this.jj_gen;
                    jj_consume_token(4);
                    builder.closeNodeScope(aSTroute);
                    aSTroute.lastToken = this.token;
                    return;
                }
                while (true) {
                    int i2 = this.jj_ntk;
                    if (i2 == -1) {
                        i2 = jj_ntk();
                    }
                    if (i2 != 3) {
                        break;
                    } else {
                        jj_consume_token(3);
                    }
                }
                iArr[12] = this.jj_gen;
                jj_consume_token(8);
                domain();
            }
        } catch (Throwable th) {
            try {
                builder.clearNodeScope();
                z = false;
                try {
                    if (th instanceof RuntimeException) {
                        throw ((RuntimeException) th);
                    }
                    if (!(th instanceof ParseException)) {
                        throw ((Error) th);
                    }
                    throw ((ParseException) th);
                } catch (Throwable th2) {
                    th = th2;
                    if (z) {
                        builder.closeNodeScope(aSTroute);
                        aSTroute.lastToken = this.token;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                z = true;
            }
        }
    }
}
