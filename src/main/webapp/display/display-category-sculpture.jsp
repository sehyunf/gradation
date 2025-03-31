<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String uri = request.getRequestURI();
String currentFile = uri.substring(uri.lastIndexOf("/") + 1);
currentFile = currentFile.replace(".jsp", ".display");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=1920, maximum-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/display/display-main-ing.css" />
</head>
<body style="margin: 0; background: #fbfcfc">
	<%@ include file="../layout/header.jsp"%>
	<input type="hidden" id="anPageName" name="page"
		value="display-category-sculpture" />
	<div class="container-center-horizontal">
		<div class="display-page screen">
			<div class="column-wrapper">
				<h1 class="page-title">display</h1>
				<div class="tab-container">
					<div class="tab-wrapper">
						<div class="tab-labels">
							<div class="tab-text">
								<a href="../display/display-main-ing.display"
								 class="<%= uri.contains("display-main-ing") ? "active" : "" %>">전시중</a>
							</div>
							<div class="tab-text-upcoming">
								<a href="../display/display-main-comming-soon.display"
								 class="<%= uri.contains("display-main-comming-soon") ? "active" : "" %>">전시예정</a>
							</div>
						</div>
					</div>
				</div>
				<div class="category-container">
					<div class="category-wrapper">
						<div class="category-list">
							<div class="category-item ">
								<a href="../display/display-category-korean.display"
									class="<%=currentFile.equals("display-category-korean.display") ? "active" : ""%>">
									한국화 </a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-painting.display"
									class="<%=currentFile.equals("display-category-painting.display") ? "active" : ""%>">회화</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-sculpture.display"
									class="<%=currentFile.equals("display-category-sculpture.display") ? "active" : ""%>">조각</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-craft.display"
									class="<%=currentFile.equals("display-category-craft.display") ? "active" : ""%>">공예</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-architecture.display"
									class="<%=currentFile.equals("display-category-architecture.display") ? "active" : ""%>">건축</a>
							</div>
							<div class="category-item ">
								<a href="../display/display-category-calligraphy.display"
									class="<%=currentFile.equals("display-category-calligraphy.display") ? "active" : ""%>">서예</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row-upload-options">
					<div class="upload-label">작품 업로드</div>
					<div class="upload-icon-wrapper">
						<a href="display-form.jsp"><img class="upload-icon"
							src="../assets/images/display/art/upload.png" alt="icon" /></a>
					</div>
					<div class="sort-options">
						<div class="sort-select">
							<div class="sort-label">정렬</div>
							<img class="sort-icon"
								src="../assets/images/display/art/sort.png" alt="sort"
								onclick="toggleSortDropdown()" />
							<div class="sort-dropdown" id="sortDropdown">
								<div class="sort-option" onclick="sortGallery('date')">
									등록일순</div>
								<div class="sort-option" onclick="sortGallery('name-asc')">
									이름 오름차순</div>
								<div class="sort-option" onclick="sortGallery('name-desc')">
									이름 내림차순</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row-main">
				<div class="row-gallery">
					<div class="gallery-column">
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="rainy" data-date="2024-01-08" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">rainy</div>
										<div class="hover-artist">박세현</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-4.jpeg"
									alt="gradation-6" data-date="2024-01-01" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">SYSO.println(1);</div>
										<div class="hover-artist">서민아</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg"
									alt="gradation-7" data-date="2024-11-08" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">SYSO.println(2);</div>
										<div class="hover-artist">서민아</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg"
									alt="gradation-2" data-date="2024-05-18" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">SYSO.println(3);</div>
										<div class="hover-artist">서민아</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="tiger-and-waterfall" data-date="2024-03-21" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">멍때리는 고양이</div>
										<div class="hover-artist">곽승민</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-column">
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg"
									alt="our-team" data-date="2024-11-01" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">Our Team</div>
										<div class="hover-artist">김동건</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="meditation-house-3" data-date="2024-02-13" />
								<div class="hover-overlay">
									<
									<div class="hover-text-group">
										<div class="hover-title">Meditation</div>
										<div class="hover-artist">이덕준</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg"
									alt="hanok-2" data-date="2024-04-14" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">봄의 한옥</div>
										<div class="hover-artist">조마루</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg"
									alt="object-cat" data-date="2024-01-18" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">식빵시리즈2</div>
										<div class="hover-artist">조냐옹</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="cat-2" data-date="2024-09-04" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">자화상</div>
										<div class="hover-artist">조냐옹</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gallery-column">
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-2.jpeg"
									alt="catwatercolor-person" data-date="2025-02-12" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">이쁘네</div>
										<div class="hover-artist">김영수</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-4.jpeg"
									alt="oh" data-date="2024-12-13" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">after</div>
										<div class="hover-artist">일러장</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="whale" data-date="2024-11-19" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">말도 안됨</div>
										<div class="hover-artist">양진영</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat-3.jpeg"
									alt="old-man-in-cafe" data-date="2024-04-05" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">자화상2</div>
										<div class="hover-artist">김동건</div>
									</div>
								</div>
							</div>
						</div>
						<div class="gallery-item">
							<div class="gallery-hover-container">
								<img class="gallery-image"
									src="../assets/images/display/art/sculpture/img-sculpture-cat.jpeg"
									alt="meditation-house-2" data-date="2024-06-07" />
								<div class="hover-overlay">
									<div class="hover-text-group">
										<div class="hover-title">meditation</div>
										<div class="hover-artist">이덕준</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="pagination-bar">
				<img class="pagination-icon"
					src="../assets/images/display/art/left.png" alt="left" />
				<%
				int currentPage = (request.getAttribute("currentPage") != null) ? (int) request.getAttribute("currentPage") : 1;
				int totalPages = (request.getAttribute("totalPages") != null) ? (int) request.getAttribute("totalPages") : 1;

				for (int i = 1; i <= totalPages; i++) {
				%>
				<a href="display-category-sculpture.display?page=<%=i%>"
					class="page-number <%=(i == currentPage) ? "active" : ""%>">
					<%=i%>
				</a>
				<%
				}
				%>
				<img class="pagination-icon"
					src="../assets/images/display/art/right.png" alt="right" />
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script>
  function toggleSortDropdown() {
    const dropdown = document.getElementById("sortDropdown");
    dropdown.style.display = dropdown.style.display === "flex" ? "none" : "flex";
  }

  function sortGallery(type) {
	  const columns = document.querySelectorAll(".gallery-column");

	  columns.forEach(column => {
	    const items = Array.from(column.querySelectorAll(".gallery-item"));

	    items.sort((a, b) => {
	      const altA = a.querySelector(".gallery-image").alt;
	      const altB = b.querySelector(".gallery-image").alt;

	      if (type === "name-asc") {
	        return altA.localeCompare(altB);
	      } else if (type === "name-desc") {
	        return altB.localeCompare(altA);
	      } else if (type === "date") {
	        const dateA = a.querySelector(".gallery-image").dataset.date || "2000-01-01";
	        const dateB = b.querySelector(".gallery-image").dataset.date || "2000-01-01";
	        return new Date(dateA) - new Date(dateB);
	      }
	    });

	    items.forEach(item => column.appendChild(item));
	  });

	  document.getElementById("sortDropdown").style.display = "none";
	}
  document.querySelectorAll('.category-link').forEach(link => {
	  link.addEventListener('click', function () {

	    document.querySelectorAll('.category-link').forEach(el => el.classList.remove('active'));

	    this.classList.add('active');
	  });
	});


  document.addEventListener("click", function (e) {
    const dropdown = document.getElementById("sortDropdown");
    const sortIcon = document.querySelector(".sort-icon");

    if (!dropdown.contains(e.target) && e.target !== sortIcon) {
      dropdown.style.display = "none";
    }
  });
</script>
</body>
</html>
