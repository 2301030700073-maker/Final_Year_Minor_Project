package kotlinx.datetime.internal.format.parser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Parser$ParserState {
    public final int inputPosition;
    public final Object output;
    public final ParserStructure parserStructure;

    public Parser$ParserState(Copyable copyable, ParserStructure parserStructure, int i) {
        parserStructure.getClass();
        this.output = copyable;
        this.parserStructure = parserStructure;
        this.inputPosition = i;
    }
}
