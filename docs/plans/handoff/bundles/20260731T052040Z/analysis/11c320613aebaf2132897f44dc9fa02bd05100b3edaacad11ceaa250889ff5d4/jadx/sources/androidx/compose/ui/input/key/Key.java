package androidx.compose.ui.input.key;

import androidx.compose.ui.node.Owner;
import androidx.room.Room;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Key {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final long Back;
    public static final long DirectionCenter;
    public static final long DirectionDown;
    public static final long DirectionLeft;
    public static final long DirectionRight;
    public static final long DirectionUp;
    public static final long Enter;
    public static final long Escape;
    public static final long NavigateNext;
    public static final long NavigatePrevious;
    public static final long NumPadEnter;
    public static final long PageDown;
    public static final long PageUp;
    public static final long Spacebar;
    public static final long Tab;

    static {
        Owner.CC.m(0, 1, 2, 3, 3);
        Back = Room.Key(4);
        Room.Key(259);
        NavigatePrevious = Room.Key(260);
        NavigateNext = Room.Key(261);
        Owner.CC.m(262, 263, 280, 281, 282);
        Room.Key(283);
        Room.Key(5);
        Room.Key(6);
        DirectionUp = Room.Key(19);
        DirectionDown = Room.Key(20);
        DirectionLeft = Room.Key(21);
        DirectionRight = Room.Key(22);
        DirectionCenter = Room.Key(23);
        Owner.CC.m(268, 269, 270, 271, 24);
        Owner.CC.m(25, 26, 27, 28, 7);
        Owner.CC.m(8, 9, 10, 11, 12);
        Owner.CC.m(13, 14, 15, 16, 81);
        Owner.CC.m(69, 17, 70, 18, 29);
        Owner.CC.m(30, 31, 32, 33, 34);
        Owner.CC.m(35, 36, 37, 38, 39);
        Owner.CC.m(40, 41, 42, 43, 44);
        Owner.CC.m(45, 46, 47, 48, 49);
        Owner.CC.m(50, 51, 52, 53, 54);
        Owner.CC.m(55, 56, 57, 58, 59);
        Room.Key(60);
        Tab = Room.Key(61);
        Spacebar = Room.Key(62);
        Room.Key(63);
        Room.Key(64);
        Room.Key(65);
        Enter = Room.Key(66);
        Room.Key(67);
        Room.Key(Token.ASSIGN_MOD);
        Escape = Room.Key(Token.ASSIGN_DIV);
        Owner.CC.m(Token.ASSIGN_EXP, 114, Token.HOOK, 116, Token.OR);
        Owner.CC.m(Token.AND, Token.INC, 120, Token.DOT, Token.FUNCTION);
        Owner.CC.m(Token.EXPORT, Token.IMPORT, 277, 278, 279);
        Owner.CC.m(68, 71, 72, 76, 73);
        Owner.CC.m(74, 75, 77, 78, 79);
        Room.Key(80);
        Room.Key(82);
        Room.Key(83);
        Room.Key(84);
        PageUp = Room.Key(92);
        PageDown = Room.Key(93);
        Owner.CC.m(94, 95, 96, 97, 98);
        Owner.CC.m(99, 100, Token.ASSIGN_LOGICAL_OR, Token.ASSIGN_BITXOR, Token.ASSIGN_BITAND);
        Owner.CC.m(Token.ASSIGN_LOGICAL_AND, Token.ASSIGN_LSH, Token.ASSIGN_RSH, Token.ASSIGN_URSH, Token.ASSIGN_ADD);
        Owner.CC.m(Token.ASSIGN_SUB, 110, TsExtractor.TS_PACKET_SIZE, PsExtractor.PRIVATE_STREAM_1, 190);
        Owner.CC.m(191, PsExtractor.AUDIO_STREAM, 193, 194, 195);
        Owner.CC.m(196, 197, 198, 199, 200);
        Owner.CC.m(201, 202, 203, Token.IF, Token.DO);
        Owner.CC.m(Token.FOR, Token.BREAK, 134, 135, Token.WITH);
        Owner.CC.m(Token.CATCH, 138, Token.VOID, 140, Token.EMPTY);
        Owner.CC.m(Token.COMPUTED_PROPERTY, Token.BLOCK, Token.LABEL, Token.TARGET, Token.LOOP);
        Owner.CC.m(Token.EXPR_VOID, Token.EXPR_RESULT, Token.JSR, 150, Token.TYPEOFNAME);
        Owner.CC.m(Token.USE_STACK, Token.SETPROP_OP, Token.SETELEM_OP, Token.LOCAL_BLOCK, Token.SET_REF_OP);
        Room.Key(Token.DOTDOT);
        Room.Key(Token.COLONCOLON);
        Room.Key(Token.XML);
        NumPadEnter = Room.Key(160);
        Owner.CC.m(Token.XMLATTR, Token.XMLEND, Token.TO_OBJECT, Token.ELSE, Token.SWITCH);
        Owner.CC.m(85, 86, 130, 87, 88);
        Owner.CC.m(89, 90, 128, 222, 129);
        Owner.CC.m(226, 272, 273, 274, 275);
        Owner.CC.m(91, Token.TO_DOUBLE, Token.GET, Token.SET, Token.LET);
        Owner.CC.m(Token.CONST, Token.SETCONST, 170, Token.ARRAYCOMP, 172);
        Owner.CC.m(Token.WITHEXPR, Token.DEBUGGER, Token.COMMENT, Token.GENEXPR, Token.METHOD);
        Owner.CC.m(Token.ARROW, Token.YIELD_STAR, 180, Token.TEMPLATE_CHARS, Token.TEMPLATE_LITERAL_SUBST);
        Owner.CC.m(Token.TAGGED_TEMPLATE_LITERAL, Token.DOTDOTDOT, Token.NULLISH_COALESCING, Token.QUESTION_DOT, Token.LAST_TOKEN);
        Owner.CC.m(204, 205, 206, 207, 208);
        Owner.CC.m(209, 210, 211, 212, 213);
        Owner.CC.m(214, 215, 216, 217, 218);
        Owner.CC.m(219, 220, 221, 223, 224);
        Owner.CC.m(276, 225, 229, 230, 231);
        Owner.CC.m(232, 233, 234, 235, 236);
        Owner.CC.m(237, 238, 239, PsExtractor.VIDEO_STREAM_MASK, 241);
        Owner.CC.m(242, 243, 244, 245, 246);
        Owner.CC.m(247, 248, 249, Context.VERSION_ECMASCRIPT, 251);
        Owner.CC.m(252, 253, 254, 255, 256);
        Owner.CC.m(TsExtractor.TS_STREAM_TYPE_AIT, 258, 264, 265, 266);
        Owner.CC.m(267, 284, 285, 286, 287);
        Owner.CC.m(288, -1000000001, -1000000002, -1000000003, -1000000004);
        Owner.CC.m(-1000000005, -1000000006, -1000000007, -1000000008, -1000000009);
        Room.Key(-1000000010);
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m285equalsimpl0(long j, long j2) {
        return j == j2;
    }
}
