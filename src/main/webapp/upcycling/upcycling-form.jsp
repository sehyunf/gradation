<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/upcycling/upcycling-form.css" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				var fullAddress = data.address;
				var extraAddress = '';

				if (data.addressType === 'R') {
					if (data.bname !== '') {
						extraAddress += data.bname;
					}
					if (data.buildingName !== '') {
						extraAddress += (extraAddress !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					fullAddress += (extraAddress !== '' ? ' (' + extraAddress
							+ ')' : '');
				}

				document.getElementById("address").value = fullAddress;
			}
		}).open();
	}
</script>
<!-- flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" />
<!-- flatpickr JS -->
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
</head>
<%@ include file="../layout/header.jsp"%>
<input type="hidden" id="page-name" name="page" value="upcycling-form" />
<div class="container-center">
	<div class="upcycle-form screen">
		<div class="header-wrapper">
			<h1 class="title">upcycle</h1>
			<div class="registration">
				<div class="registration-label">registration</div>
			</div>
		</div>
		<div class="main-input-section">
			<div class="upload-image-box">
				<div class="attachment-box"
					onclick="document.getElementById('file-input').click();">
					<img id="upload-icon" class="add-image" alt="add-icon"
						src="../assets/images/display/add.png" /> <span id="upload-label"
						class="add-text">첨부파일 업로드</span>
					<img id="preview-image" class="preview-image"
						style="display: none;" alt="preview" /> <input type="file"
						id="file-input" accept="image/*" style="display: none;"
						onchange="previewImage(event)" />
				</div>
				<p class="upload-description">(수거 신청한 폐기 작품 사진 업로드)</p>
			</div>
			<div class="school-info-wrapper">
				<div class="school-search-field">
					<div class="school-search-row">
						<div class="text-school">
							<span> <span class="span-1">학교명</span> <span
								class="span-2">*</span>
							</span>
						</div>
						<input class="school-name-input" id="address" name="address"
							placeholder="학교명을 검색하세요." type="text" required />
						<button type="button" class="address-search-button"
							onclick="execDaumPostcode()">
							<div class="text-search-address">주소 검색</div>
						</button>
					</div>

				</div>
				<div class="address-detail-field">
					<div class="address-row">
						<div class="text-detail-address">
							<span><span class="span-1">상세주소</span><span class="span-2">*</span>
							</span>
						</div>
						<input class="detail-address-input" name="detail-address"
							placeholder="상세주소를 입력하세요. " type="text" required />
					</div>
				</div>
				<div class="email-field">
					<div class="email-row">
						<div class="text-email">
							<span><span class="span-1">이메일</span><span class="span-2">*</span>
							</span>
						</div>
						<input class="email-input" name="email" placeholder="이메일을 입력하세요."
							type="email" />
					</div>
				</div>
				<div class="phone-field">
					<div class="phone-row">
						<div class="text-phone">
							<span><span class="span-1">연락처</span><span class="span-2">*</span>
							</span>
						</div>
						<input class="input-phone" name="phone" placeholder="연락처를 입력하세요."
							type="text" />
					</div>
				</div>
				<div class="pickup-date-field">
					<label class="pickup-label">수거 신청일<span class="required">*</span></label>
					<div class="calendar-input-group">
						<img class="calendar-icon"
							src="../assets/images/upcycling/upcycling-form/calendar.png"
							alt="calendar" /> <input type="text" id="pickupDateInput"
							class="calendar-display-input" placeholder="날짜를 선택해주세요." readonly />
					</div>
				</div>
				<div class="size-count-wrapper">
					<div class="size-category-wrapper">
						<div class="text-trash">
							<span><span class="span-1">크기 분류(작품 개수 선택)</span><span
								class="span-2">*</span> </span>
						</div>
						<div class="size-category">
							<div class="x50cm">소형(50cm 이하)</div>
							<div class="x50cm-100cm">중형(50cm ~ 100cm)</div>
							<div class="x100cm">대형(100cm 이상)</div>
						</div>
					</div>
					<div class="canvas-count-wrapper">
						<div class="canvas-number-small">
							<div class="input-wrapper-small">
								<input class="text-1" name="x50-number" placeholder=""
									type="text" />
							</div>
							<div class="count-small-unit">개</div>
						</div>
						<div class="canvas-number-medium">
							<div class="input-wrapper-medium">
								<input class="text-1" name="x50cm-100cm-number" placeholder=""
									type="text" />
							</div>
							<div class="count-medium-unit">개</div>
						</div>
						<div class="canvas-number-large">
							<div class="input-wrapper-large">
								<input class="text-1" name="x100cm-number" placeholder=""
									type="text" />
							</div>
							<div class="count-large-unit">개</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section-material">
			<div class="material-wrapper">
				<div class="text-material">
					<span><span class="span-1">주된 재질</span><span class="span-2">*</span>
					</span>
				</div>
				<div class="material-checkbox-group">
					<fieldset>
						<label><input type="checkbox" name="material"
							value="canvas-paper" /> 캔버스 & 종이류 </label> <label><input
							type="checkbox" name="material" value="wood" /> 목재 </label> <label><input
							type="checkbox" name="material" value="metal" /> 금속 </label> <label><input
							type="checkbox" name="material" value="plastic-acrylic" /> 플라스틱
							& 아크릴 </label> <label><input type="checkbox" name="material"
							value="other" /> 기타</label>
					</fieldset>
				</div>
			</div>
			<div class="extra-notes-field">
				<div class="text-significant">특이 사항</div>
				<div class="input-wrapper-extra">
					<input class="extra-notes-input" name="significant"
						placeholder=" 예: 깨지기 쉬움, 분해 필요" type="text" />
				</div>
			</div>
			<div class="confirm">
				<div class="confirm-item">
					<button type="button" class="cancel-button">
						<div class="text-cancel"><a href="../upcycling/upcycling-main.upcycling">취소</a></div>
					</button>
				</div>
				<div class="confirm-item">
					<button type="submit" class="submit-button">
						<div class="text-confirm">신청</div>
					</button>
				</div>
			</div>
			<%@ include file="../layout/footer.jsp"%>
		</div>
	</div>
</div>
<script>
function previewImage(event) {
	  const file = event.target.files[0];
	  if (!file) return;
	  const reader = new FileReader();
	  reader.onload = function (e) {
	    const preview = document.getElementById("preview-image");
	    preview.src = e.target.result;
	    preview.style.display = "block";
	    document.getElementById("upload-icon").style.display = "none";
	    document.getElementById("upload-label").style.display = "none";
	  };
	  reader.readAsDataURL(file);
	}

  flatpickr("#pickupDateInput", {
    onChange: function(selectedDates, dateStr) {
      document.getElementById("pickupDateInput").value = dateStr;
    },
    disableMobile: true
  });

  document.querySelector(".calendar-icon").addEventListener("click", () => {
    document.getElementById("pickupDateInput").focus();
  });
</script>


</body>
</html>
