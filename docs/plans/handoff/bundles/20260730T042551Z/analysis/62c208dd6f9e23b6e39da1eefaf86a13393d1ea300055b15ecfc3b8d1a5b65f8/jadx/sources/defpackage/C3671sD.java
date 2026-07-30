package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import defpackage.C3730tD;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: sD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3671sD extends C3730tD.Ccase {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ List f15414do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Matrix f15415for;

    public C3671sD(ArrayList arrayList, Matrix matrix) {
        this.f15414do = arrayList;
        this.f15415for = matrix;
    }

    @Override // defpackage.C3730tD.Ccase
    /* renamed from: do, reason: not valid java name */
    public final void mo8080do(Matrix matrix, C3436oD c3436oD, int i, Canvas canvas) {
        Iterator it = this.f15414do.iterator();
        while (it.hasNext()) {
            ((C3730tD.Ccase) it.next()).mo8080do(this.f15415for, c3436oD, i, canvas);
        }
    }
}
