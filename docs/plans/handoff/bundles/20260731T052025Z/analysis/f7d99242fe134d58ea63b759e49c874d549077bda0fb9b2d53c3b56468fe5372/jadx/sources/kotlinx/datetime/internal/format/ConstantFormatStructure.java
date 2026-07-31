package kotlinx.datetime.internal.format;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.MathKt;
import kotlinx.datetime.internal.format.formatter.ConditionalFormatter;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ConstantNumberConsumer;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConstantFormatStructure implements NonConcatenatedFormatStructure {
    public final String string;

    public ConstantFormatStructure(String str) {
        str.getClass();
        this.string = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConstantFormatStructure) {
            return Intrinsics.areEqual(this.string, ((ConstantFormatStructure) obj).string);
        }
        return false;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure formatter() {
        return new ConditionalFormatter(this.string);
    }

    public final int hashCode() {
        return this.string.hashCode();
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure parser() {
        List build;
        String str;
        String str2 = this.string;
        int length = str2.length();
        EmptyList emptyList = EmptyList.INSTANCE;
        if (length == 0) {
            build = emptyList;
        } else {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            String str3 = "";
            if (MathKt.isAsciiDigit(str2.charAt(0))) {
                int length2 = str2.length();
                int i = 0;
                while (true) {
                    if (i >= length2) {
                        str = str2;
                        break;
                    }
                    if (!MathKt.isAsciiDigit(str2.charAt(i))) {
                        str = str2.substring(0, i);
                        break;
                    }
                    i++;
                }
                createListBuilder.add(new NumberSpanParserOperation(IntOffsetKt.listOf(new ConstantNumberConsumer(str))));
                int length3 = str2.length();
                int i2 = 0;
                while (true) {
                    if (i2 >= length3) {
                        str2 = "";
                        break;
                    }
                    if (!MathKt.isAsciiDigit(str2.charAt(i2))) {
                        str2 = str2.substring(i2);
                        break;
                    }
                    i2++;
                }
            }
            if (str2.length() > 0) {
                if (MathKt.isAsciiDigit(str2.charAt(str2.length() - 1))) {
                    int length4 = str2.length();
                    while (true) {
                        length4--;
                        if (-1 >= length4) {
                            break;
                        }
                        if (!MathKt.isAsciiDigit(str2.charAt(length4))) {
                            str3 = str2.substring(0, length4 + 1);
                            break;
                        }
                    }
                    createListBuilder.add(new PlainStringParserOperation(str3));
                    int length5 = str2.length() - 1;
                    while (true) {
                        if (-1 >= length5) {
                            break;
                        }
                        if (!MathKt.isAsciiDigit(str2.charAt(length5))) {
                            str2 = str2.substring(length5 + 1);
                            break;
                        }
                        length5--;
                    }
                    createListBuilder.add(new NumberSpanParserOperation(IntOffsetKt.listOf(new ConstantNumberConsumer(str2))));
                } else {
                    createListBuilder.add(new PlainStringParserOperation(str2));
                }
            }
            build = IntOffsetKt.build(createListBuilder);
        }
        return new ParserStructure(build, emptyList);
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("ConstantFormatStructure("), this.string, ')');
    }
}
