package androidx.compose.foundation.text;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KeyCommand {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ KeyCommand[] $VALUES;
    public static final KeyCommand CENTER;
    public static final KeyCommand CHARACTER_PALETTE;
    public static final KeyCommand COPY;
    public static final KeyCommand CUT;
    public static final KeyCommand DELETE_FROM_LINE_START;
    public static final KeyCommand DELETE_NEXT_CHAR;
    public static final KeyCommand DELETE_NEXT_WORD;
    public static final KeyCommand DELETE_PREV_CHAR;
    public static final KeyCommand DELETE_PREV_WORD;
    public static final KeyCommand DELETE_TO_LINE_END;
    public static final KeyCommand DESELECT;
    public static final KeyCommand DOWN;
    public static final KeyCommand END;
    public static final KeyCommand HOME;
    public static final KeyCommand LEFT_CHAR;
    public static final KeyCommand LEFT_WORD;
    public static final KeyCommand LINE_END;
    public static final KeyCommand LINE_LEFT;
    public static final KeyCommand LINE_RIGHT;
    public static final KeyCommand LINE_START;
    public static final KeyCommand NEW_LINE;
    public static final KeyCommand NEXT_PARAGRAPH;
    public static final KeyCommand PAGE_DOWN;
    public static final KeyCommand PAGE_UP;
    public static final KeyCommand PASTE;
    public static final KeyCommand PREV_PARAGRAPH;
    public static final KeyCommand REDO;
    public static final KeyCommand RIGHT_CHAR;
    public static final KeyCommand RIGHT_WORD;
    public static final KeyCommand SELECT_ALL;
    public static final KeyCommand SELECT_DOWN;
    public static final KeyCommand SELECT_END;
    public static final KeyCommand SELECT_HOME;
    public static final KeyCommand SELECT_LEFT_CHAR;
    public static final KeyCommand SELECT_LEFT_WORD;
    public static final KeyCommand SELECT_LINE_END;
    public static final KeyCommand SELECT_LINE_LEFT;
    public static final KeyCommand SELECT_LINE_RIGHT;
    public static final KeyCommand SELECT_LINE_START;
    public static final KeyCommand SELECT_NEXT_PARAGRAPH;
    public static final KeyCommand SELECT_PAGE_DOWN;
    public static final KeyCommand SELECT_PAGE_UP;
    public static final KeyCommand SELECT_PREV_PARAGRAPH;
    public static final KeyCommand SELECT_RIGHT_CHAR;
    public static final KeyCommand SELECT_RIGHT_WORD;
    public static final KeyCommand SELECT_UP;
    public static final KeyCommand TAB;
    public static final KeyCommand UNDO;
    public static final KeyCommand UP;
    private final boolean editsText;

    static {
        KeyCommand keyCommand = new KeyCommand(0, "LEFT_CHAR", false);
        LEFT_CHAR = keyCommand;
        KeyCommand keyCommand2 = new KeyCommand(1, "RIGHT_CHAR", false);
        RIGHT_CHAR = keyCommand2;
        KeyCommand keyCommand3 = new KeyCommand(2, "RIGHT_WORD", false);
        RIGHT_WORD = keyCommand3;
        KeyCommand keyCommand4 = new KeyCommand(3, "LEFT_WORD", false);
        LEFT_WORD = keyCommand4;
        KeyCommand keyCommand5 = new KeyCommand(4, "NEXT_PARAGRAPH", false);
        NEXT_PARAGRAPH = keyCommand5;
        KeyCommand keyCommand6 = new KeyCommand(5, "PREV_PARAGRAPH", false);
        PREV_PARAGRAPH = keyCommand6;
        KeyCommand keyCommand7 = new KeyCommand(6, "LINE_START", false);
        LINE_START = keyCommand7;
        KeyCommand keyCommand8 = new KeyCommand(7, "LINE_END", false);
        LINE_END = keyCommand8;
        KeyCommand keyCommand9 = new KeyCommand(8, "LINE_LEFT", false);
        LINE_LEFT = keyCommand9;
        KeyCommand keyCommand10 = new KeyCommand(9, "LINE_RIGHT", false);
        LINE_RIGHT = keyCommand10;
        KeyCommand keyCommand11 = new KeyCommand(10, "UP", false);
        UP = keyCommand11;
        KeyCommand keyCommand12 = new KeyCommand(11, "DOWN", false);
        DOWN = keyCommand12;
        KeyCommand keyCommand13 = new KeyCommand(12, "CENTER", false);
        CENTER = keyCommand13;
        KeyCommand keyCommand14 = new KeyCommand(13, "PAGE_UP", false);
        PAGE_UP = keyCommand14;
        KeyCommand keyCommand15 = new KeyCommand(14, "PAGE_DOWN", false);
        PAGE_DOWN = keyCommand15;
        KeyCommand keyCommand16 = new KeyCommand(15, "HOME", false);
        HOME = keyCommand16;
        KeyCommand keyCommand17 = new KeyCommand(16, "END", false);
        END = keyCommand17;
        KeyCommand keyCommand18 = new KeyCommand(17, "COPY", false);
        COPY = keyCommand18;
        KeyCommand keyCommand19 = new KeyCommand(18, "PASTE", true);
        PASTE = keyCommand19;
        KeyCommand keyCommand20 = new KeyCommand(19, "CUT", true);
        CUT = keyCommand20;
        KeyCommand keyCommand21 = new KeyCommand(20, "DELETE_PREV_CHAR", true);
        DELETE_PREV_CHAR = keyCommand21;
        KeyCommand keyCommand22 = new KeyCommand(21, "DELETE_NEXT_CHAR", true);
        DELETE_NEXT_CHAR = keyCommand22;
        KeyCommand keyCommand23 = new KeyCommand(22, "DELETE_PREV_WORD", true);
        DELETE_PREV_WORD = keyCommand23;
        KeyCommand keyCommand24 = new KeyCommand(23, "DELETE_NEXT_WORD", true);
        DELETE_NEXT_WORD = keyCommand24;
        KeyCommand keyCommand25 = new KeyCommand(24, "DELETE_FROM_LINE_START", true);
        DELETE_FROM_LINE_START = keyCommand25;
        KeyCommand keyCommand26 = new KeyCommand(25, "DELETE_TO_LINE_END", true);
        DELETE_TO_LINE_END = keyCommand26;
        KeyCommand keyCommand27 = new KeyCommand(26, "SELECT_ALL", false);
        SELECT_ALL = keyCommand27;
        KeyCommand keyCommand28 = new KeyCommand(27, "SELECT_LEFT_CHAR", false);
        SELECT_LEFT_CHAR = keyCommand28;
        KeyCommand keyCommand29 = new KeyCommand(28, "SELECT_RIGHT_CHAR", false);
        SELECT_RIGHT_CHAR = keyCommand29;
        KeyCommand keyCommand30 = new KeyCommand(29, "SELECT_UP", false);
        SELECT_UP = keyCommand30;
        KeyCommand keyCommand31 = new KeyCommand(30, "SELECT_DOWN", false);
        SELECT_DOWN = keyCommand31;
        KeyCommand keyCommand32 = new KeyCommand(31, "SELECT_PAGE_UP", false);
        SELECT_PAGE_UP = keyCommand32;
        KeyCommand keyCommand33 = new KeyCommand(32, "SELECT_PAGE_DOWN", false);
        SELECT_PAGE_DOWN = keyCommand33;
        KeyCommand keyCommand34 = new KeyCommand(33, "SELECT_HOME", false);
        SELECT_HOME = keyCommand34;
        KeyCommand keyCommand35 = new KeyCommand(34, "SELECT_END", false);
        SELECT_END = keyCommand35;
        KeyCommand keyCommand36 = new KeyCommand(35, "SELECT_LEFT_WORD", false);
        SELECT_LEFT_WORD = keyCommand36;
        KeyCommand keyCommand37 = new KeyCommand(36, "SELECT_RIGHT_WORD", false);
        SELECT_RIGHT_WORD = keyCommand37;
        KeyCommand keyCommand38 = new KeyCommand(37, "SELECT_NEXT_PARAGRAPH", false);
        SELECT_NEXT_PARAGRAPH = keyCommand38;
        KeyCommand keyCommand39 = new KeyCommand(38, "SELECT_PREV_PARAGRAPH", false);
        SELECT_PREV_PARAGRAPH = keyCommand39;
        KeyCommand keyCommand40 = new KeyCommand(39, "SELECT_LINE_START", false);
        SELECT_LINE_START = keyCommand40;
        KeyCommand keyCommand41 = new KeyCommand(40, "SELECT_LINE_END", false);
        SELECT_LINE_END = keyCommand41;
        KeyCommand keyCommand42 = new KeyCommand(41, "SELECT_LINE_LEFT", false);
        SELECT_LINE_LEFT = keyCommand42;
        KeyCommand keyCommand43 = new KeyCommand(42, "SELECT_LINE_RIGHT", false);
        SELECT_LINE_RIGHT = keyCommand43;
        KeyCommand keyCommand44 = new KeyCommand(43, "DESELECT", false);
        DESELECT = keyCommand44;
        KeyCommand keyCommand45 = new KeyCommand(44, "NEW_LINE", true);
        NEW_LINE = keyCommand45;
        KeyCommand keyCommand46 = new KeyCommand(45, "TAB", true);
        TAB = keyCommand46;
        KeyCommand keyCommand47 = new KeyCommand(46, "UNDO", true);
        UNDO = keyCommand47;
        KeyCommand keyCommand48 = new KeyCommand(47, "REDO", true);
        REDO = keyCommand48;
        KeyCommand keyCommand49 = new KeyCommand(48, "CHARACTER_PALETTE", true);
        CHARACTER_PALETTE = keyCommand49;
        KeyCommand[] keyCommandArr = {keyCommand, keyCommand2, keyCommand3, keyCommand4, keyCommand5, keyCommand6, keyCommand7, keyCommand8, keyCommand9, keyCommand10, keyCommand11, keyCommand12, keyCommand13, keyCommand14, keyCommand15, keyCommand16, keyCommand17, keyCommand18, keyCommand19, keyCommand20, keyCommand21, keyCommand22, keyCommand23, keyCommand24, keyCommand25, keyCommand26, keyCommand27, keyCommand28, keyCommand29, keyCommand30, keyCommand31, keyCommand32, keyCommand33, keyCommand34, keyCommand35, keyCommand36, keyCommand37, keyCommand38, keyCommand39, keyCommand40, keyCommand41, keyCommand42, keyCommand43, keyCommand44, keyCommand45, keyCommand46, keyCommand47, keyCommand48, keyCommand49};
        $VALUES = keyCommandArr;
        $ENTRIES = new EnumEntriesList(keyCommandArr);
    }

    public KeyCommand(int i, String str, boolean z) {
        this.editsText = z;
    }

    public static KeyCommand valueOf(String str) {
        return (KeyCommand) Enum.valueOf(KeyCommand.class, str);
    }

    public static KeyCommand[] values() {
        return (KeyCommand[]) $VALUES.clone();
    }

    public final boolean getEditsText() {
        return this.editsText;
    }
}
