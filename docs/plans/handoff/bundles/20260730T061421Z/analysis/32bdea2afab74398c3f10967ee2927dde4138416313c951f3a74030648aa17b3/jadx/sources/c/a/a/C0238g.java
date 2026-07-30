package c.a.a;

import android.content.res.Resources;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: c.a.a.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0238g implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Resources f1860a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1861b;

    public /* synthetic */ C0238g(Resources resources, int i) {
        this.f1860a = resources;
        this.f1861b = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        XmlPullParser xml;
        xml = this.f1860a.getXml(this.f1861b);
        return xml;
    }
}
