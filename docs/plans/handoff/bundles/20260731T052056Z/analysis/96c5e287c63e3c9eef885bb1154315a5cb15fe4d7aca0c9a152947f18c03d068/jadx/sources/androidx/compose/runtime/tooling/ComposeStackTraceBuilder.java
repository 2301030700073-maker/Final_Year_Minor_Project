package androidx.compose.runtime.tooling;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ComposeStackTraceBuilder implements KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor {
    public final ArrayList _trace;

    public ComposeStackTraceBuilder(int i) {
        switch (i) {
            case 1:
                this._trace = new ArrayList();
                break;
            default:
                this._trace = new ArrayList();
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean appendGroupSourceInformation(int r8, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r9, java.lang.Object r10) {
        /*
            r7 = this;
            java.util.ArrayList r0 = r9.groups
            r1 = 1
            if (r0 != 0) goto La
            r10 = 0
            r7.appendTraceFrame(r8, r9, r10)
            return r1
        La:
            int r2 = r0.size()
            r3 = 0
            r4 = r3
        L10:
            if (r4 >= r2) goto L3a
            java.lang.Object r5 = r0.get(r4)
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapAnchor
            if (r6 == 0) goto L21
            if (r5 == r10) goto L1d
            goto L32
        L1d:
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L21:
            boolean r6 = r5 instanceof androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation
            if (r6 == 0) goto L35
            r6 = r5
            androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation r6 = (androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation) r6
            boolean r6 = r7.appendGroupSourceInformation(r8, r6, r10)
            if (r6 == 0) goto L32
            r7.appendTraceFrame(r3, r9, r5)
            return r1
        L32:
            int r4 = r4 + 1
            goto L10
        L35:
            java.lang.String r7 = "Unexpected child source info "
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$8(r7, r5)
        L3a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.tooling.ComposeStackTraceBuilder.appendGroupSourceInformation(int, androidx.compose.runtime.composer.gapbuffer.GapGroupSourceInformation, java.lang.Object):boolean");
    }

    public void appendTraceFrame(int i, GapGroupSourceInformation gapGroupSourceInformation, Object obj) {
        this._trace.add(new ComposeStackTraceFrame(i, null, null));
    }

    public void processEdge(int i, Object obj, GapGroupSourceInformation gapGroupSourceInformation, Object obj2) {
        if (Intrinsics.areEqual(obj, Composer$Companion.Empty)) {
            appendTraceFrame(i, gapGroupSourceInformation, null);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visit(Object obj) {
        if (obj instanceof String) {
            this._trace.add((String) obj);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitEnd() {
        visitEnd((String[]) this._trace.toArray(new String[0]));
    }

    public abstract void visitEnd(String[] strArr);

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitClassLiteral(ClassLiteralValue classLiteralValue) {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor
    public void visitEnum(ClassId classId, Name name) {
    }
}
